import 'package:flutter/material.dart';
import '../../app/theme/app_theme.dart';

enum PillTone { green, amber, blue, grey }

class Pill extends StatelessWidget {
  final String label;
  final PillTone tone;
  const Pill(this.label, {super.key, this.tone = PillTone.grey});

  @override
  Widget build(BuildContext context) {
    final (bg, fg) = switch (tone) {
      PillTone.green => (AppColors.pillGreenBg, AppColors.pillGreenFg),
      PillTone.amber => (AppColors.pillAmberBg, AppColors.pillAmberFg),
      PillTone.blue => (AppColors.pillBlueBg, AppColors.pillBlueFg),
      PillTone.grey => (AppColors.pillGreyBg, AppColors.pillGreyFg),
    };
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(99),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: fg,
          fontSize: 10,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
