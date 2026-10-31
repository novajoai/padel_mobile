import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../l10n/gen/app_localizations.dart';
import '../constants/api_endpoints.dart';
import '../di/injection.dart';
import '../models/sponsor.dart';
import '../network/api_envelope.dart';
import '../theme/app_spacing.dart';
import '../theme/app_tokens.dart';

void _open(Sponsor s) {
  final uri = s.linkUrl == null ? null : Uri.tryParse(s.linkUrl!);
  if (uri != null) launchUrl(uri, mode: LaunchMode.externalApplication);
}

/// Sponsors' banner at the top of the home screen (`GET sponsors/banners`),
/// rotating every 5 seconds. Renders nothing when there is none.
class SponsorBanner extends StatefulWidget {
  const SponsorBanner({super.key});

  @override
  State<SponsorBanner> createState() => _SponsorBannerState();
}

class _SponsorBannerState extends State<SponsorBanner> {
  final _page = PageController();
  List<Sponsor> _sponsors = const [];
  Timer? _timer;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    try {
      final r = await sl<Dio>().get(ApiEndpoints.sponsorBanners);
      final list = Sponsor.listFromJson(ApiEnvelope.data(r)).where((s) => s.bannerUrl != null).toList();
      if (!mounted) return;
      setState(() => _sponsors = list);
      if (list.length > 1) {
        _timer = Timer.periodic(const Duration(seconds: 5), (_) {
          if (!_page.hasClients) return;
          _page.animateToPage((_index + 1) % _sponsors.length, duration: const Duration(milliseconds: 450), curve: Curves.easeOut);
        });
      }
    } catch (_) {
      // No banner when offline or on an older server.
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _page.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_sponsors.isEmpty) return const SizedBox.shrink();
    return Column(
      children: [
        ClipRRect(
          borderRadius: AppRadius.xlAll,
          child: AspectRatio(
            aspectRatio: 3 / 1,
            child: PageView.builder(
              controller: _page,
              itemCount: _sponsors.length,
              onPageChanged: (i) => setState(() => _index = i),
              itemBuilder: (context, i) {
                final s = _sponsors[i];
                return GestureDetector(
                  onTap: () => _open(s),
                  child: Image.network(
                    s.bannerUrl!,
                    fit: BoxFit.cover,
                    semanticLabel: s.name,
                    errorBuilder: (_, _, _) => ColoredBox(
                      color: context.tokens.surface,
                      child: Center(child: Text(s.name, style: context.text.titleMedium)),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        if (_sponsors.length > 1) ...[
          Gap.xs,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < _sponsors.length; i++)
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  width: i == _index ? 16 : 6,
                  height: 6,
                  decoration: BoxDecoration(
                    color: i == _index ? context.tokens.highlight : context.tokens.outline,
                    borderRadius: AppRadius.pillAll,
                  ),
                ),
            ],
          ),
        ],
      ],
    );
  }
}

/// "Sponsored by" + the sponsors' logos (tap opens the sponsor's link).
class SponsorsRow extends StatelessWidget {
  final List<Sponsor> sponsors;

  const SponsorsRow({super.key, required this.sponsors});

  @override
  Widget build(BuildContext context) {
    if (sponsors.isEmpty) return const SizedBox.shrink();
    final l10n = AppLocalizations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.sponsoredBy, style: context.text.labelMedium),
        Gap.sm,
        Wrap(
          spacing: AppSpacing.md,
          runSpacing: AppSpacing.sm,
          children: [
            for (final s in sponsors)
              InkWell(
                onTap: s.linkUrl == null ? null : () => _open(s),
                borderRadius: AppRadius.smAll,
                child: Container(
                  height: 52,
                  padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md, vertical: AppSpacing.xs),
                  decoration: BoxDecoration(color: Colors.white, borderRadius: AppRadius.smAll, border: Border.all(color: context.tokens.outline)),
                  child: s.logoUrl == null
                      ? Center(child: Text(s.name, style: context.text.titleSmall?.copyWith(color: Colors.black87)))
                      : Image.network(
                          s.logoUrl!,
                          fit: BoxFit.contain,
                          semanticLabel: s.name,
                          errorBuilder: (_, _, _) => Center(child: Text(s.name, style: context.text.titleSmall?.copyWith(color: Colors.black87))),
                        ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
