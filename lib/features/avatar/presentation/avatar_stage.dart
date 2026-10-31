import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_effects.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_tokens.dart';
import '../../../core/widgets/court_lines.dart';
import '../../../l10n/gen/app_localizations.dart';

/// What the stage reports after drawing (debug panel / test reports).
class AvatarStageReport {
  final Map<String, dynamic> timings;
  final Map<String, dynamic> stats;
  final List<String> missingBones;
  final DateTime at;

  /// Time from opening the screen to the first finished character (WebView + three.js + files).
  final int? firstPaintMs;

  const AvatarStageReport({this.timings = const {}, this.stats = const {}, this.missingBones = const [], required this.at, this.firstPaintMs});
}

/// The modular character, drawn by the server-hosted 3D stage (`/avatar/stage`, three.js)
/// in a WebView. [spec] comes from the server (profile `avatar`, `me/avatar`, `avatar/preview`).
/// Drag sideways to turn the character.
class AvatarStage extends StatefulWidget {
  final String stageUrl;
  final Map<String, dynamic>? spec;
  final double height;
  final bool debug;
  final ValueChanged<AvatarStageReport>? onReport;
  final ValueChanged<Map<String, dynamic>>? onStats;

  const AvatarStage({super.key, required this.stageUrl, required this.spec, this.height = 380, this.debug = false, this.onReport, this.onStats});

  @override
  State<AvatarStage> createState() => _AvatarStageState();
}

class _AvatarStageState extends State<AvatarStage> {
  late final WebViewController _web;
  final _opened = Stopwatch()..start();
  bool _ready = false;
  bool _drawn = false;
  String? _error;
  String? _applied;

  @override
  void initState() {
    super.initState();
    _web = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.transparent)
      ..addJavaScriptChannel('AvatarBridge', onMessageReceived: (m) => _onMessage(m.message))
      ..setNavigationDelegate(NavigationDelegate(
        onWebResourceError: (e) {
          if (e.isForMainFrame ?? true) setState(() => _error = e.description);
        },
      ))
      ..loadRequest(Uri.parse(widget.stageUrl));
  }

  void _onMessage(String raw) {
    final Map<String, dynamic> m;
    try {
      m = (jsonDecode(raw) as Map).cast<String, dynamic>();
    } catch (_) {
      return;
    }
    if (!mounted) return;
    switch (m['type']) {
      case 'ready':
        _ready = true;
        _apply();
      case 'loaded':
        final first = !_drawn;
        setState(() {
          _drawn = true;
          _error = null;
        });
        widget.onReport?.call(AvatarStageReport(
          timings: (m['timings'] as Map?)?.cast<String, dynamic>() ?? const {},
          stats: (m['stats'] as Map?)?.cast<String, dynamic>() ?? const {},
          missingBones: [for (final b in (m['missingBones'] as List? ?? const [])) b.toString()],
          at: DateTime.now(),
          firstPaintMs: first ? _opened.elapsedMilliseconds : null,
        ));
      case 'stats':
        widget.onStats?.call(m);
      case 'error':
        if (kDebugMode) debugPrint('AvatarStage: ${m['message']}');
        setState(() => _error = m['message']?.toString());
    }
  }

  Future<void> _apply() async {
    final spec = widget.spec;
    if (!_ready || spec == null) return;
    final json = jsonEncode({...spec, 'debug': widget.debug});
    if (json == _applied) return;
    _applied = json;
    await _web.runJavaScript('window.stage && window.stage.apply($json)');
  }

  @override
  void didUpdateWidget(covariant AvatarStage old) {
    super.didUpdateWidget(old);
    if (old.stageUrl != widget.stageUrl) {
      _ready = false;
      _applied = null;
      _web.loadRequest(Uri.parse(widget.stageUrl));
    } else {
      _apply();
    }
  }

  @override
  void dispose() {
    // Free the GPU memory now instead of waiting for the WebView to be collected.
    _web.runJavaScript('window.stage && window.stage.dispose()').catchError((_) {});
    super.dispose();
  }

  void _retry() {
    setState(() {
      _error = null;
      _ready = false;
      _applied = null;
    });
    _web.reload();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return ClipRRect(
      borderRadius: AppRadius.xlAll,
      child: SizedBox(
        height: widget.height,
        child: Stack(
          fit: StackFit.expand,
          children: [
            const DecoratedBox(decoration: BoxDecoration(gradient: AppGradients.court), child: CourtLinesBackground()),
            WebViewWidget(
              controller: _web,
              // Sideways drags turn the character; vertical ones still scroll the page.
              gestureRecognizers: {Factory<HorizontalDragGestureRecognizer>(HorizontalDragGestureRecognizer.new)},
            ),
            if (!_drawn && _error == null)
              const Center(child: SizedBox(width: 28, height: 28, child: CircularProgressIndicator(strokeWidth: 2.5, color: AppColors.white))),
            if (_error != null)
              Center(
                child: Padding(
                  padding: AppSpacing.page,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.view_in_ar_outlined, color: AppColors.white, size: 36),
                      Gap.sm,
                      Text(l10n.avatarLoadFailed, textAlign: TextAlign.center, style: context.text.bodyMedium?.copyWith(color: AppColors.white)),
                      Gap.sm,
                      OutlinedButton(onPressed: _retry, child: Text(l10n.actionRetry)),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
