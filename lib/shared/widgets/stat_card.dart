import 'package:flutter/material.dart';
import '../../app/theme/app_theme.dart';

class StatCard extends StatelessWidget {
  final String label;
  final String value;
  final String footnote;
  final IconData? icon;
  final Color? iconBg;
  final Color? iconFg;

  const StatCard({
    super.key,
    required this.label,
    required this.value,
    required this.footnote,
    this.icon,
    this.iconBg,
    this.iconFg,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    label,
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: isDark
                          ? const Color(0xFF9BA9BD)
                          : const Color(0xFF748197),
                    ),
                  ),
                ),
                if (icon != null)
                  Container(
                    width: 33,
                    height: 33,
                    decoration: BoxDecoration(
                      color: iconBg ?? const Color(0xFFEEEEFF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Icon(
                      icon,
                      size: 16,
                      color: iconFg ?? AppColors.primary,
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              value,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w800,
                letterSpacing: -1,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              footnote,
              style: TextStyle(
                fontSize: 10,
                color:
                    isDark ? const Color(0xFF9CA9BC) : const Color(0xFF7C899D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
