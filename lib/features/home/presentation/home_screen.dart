import 'package:flutter/material.dart';
import '../../../app/theme/app_theme.dart';
import '../../../shared/widgets/pill.dart';
import '../../../shared/widgets/stat_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'YOUR CAREER WORKSPACE',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.6,
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Good morning, Jordan',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -1,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'A clearer path to your next opportunity starts here.',
                style: TextStyle(
                  fontSize: 12,
                  color: isDark
                      ? const Color(0xFFA2AEC2)
                      : const Color(0xFF78869A),
                ),
              ),
              const SizedBox(height: 16),
              GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1.15,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  const StatCard(
                    label: 'Applications in progress',
                    value: '08',
                    footnote: '2 added this month',
                    icon: Icons.work_outline,
                  ),
                  StatCard(
                    label: 'Interviews scheduled',
                    value: '02',
                    footnote: 'Next one in 3 days',
                    icon: Icons.schedule,
                    iconBg: const Color(0xFFE4F7EF),
                    iconFg: const Color(0xFF159B79),
                  ),
                  StatCard(
                    label: 'Profile completion',
                    value: '68%',
                    footnote: 'A few details to strengthen',
                    icon: Icons.person_outline,
                    iconBg: const Color(0xFFFFF2DF),
                    iconFg: const Color(0xFFBD7D24),
                  ),
                  StatCard(
                    label: 'Documents created',
                    value: '12',
                    footnote: 'Across 5 roles',
                    icon: Icons.description_outlined,
                    iconBg: const Color(0xFFF1EAFF),
                    iconFg: const Color(0xFF875BD6),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Recent opportunities',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  Pill('This week', tone: PillTone.blue),
                ],
              ),
              const SizedBox(height: 10),
              _jobRow(
                initial: 'N',
                colorBg: const Color(0xFFE7F1FF),
                colorFg: const Color(0xFF3477CE),
                title: 'Product Designer',
                subtitle: 'Northstar Labs · Remote · Saved today',
                pillLabel: '76% match',
                pillTone: PillTone.green,
              ),
              _jobRow(
                initial: 'V',
                colorBg: const Color(0xFFE2F7EF),
                colorFg: const Color(0xFF168664),
                title: 'UX Research Associate',
                subtitle: 'Vela Health · Hybrid · Saved yesterday',
                pillLabel: 'Partial fit',
                pillTone: PillTone.amber,
              ),
              _jobRow(
                initial: 'A',
                colorBg: const Color(0xFFFFF0DF),
                colorFg: const Color(0xFFC47B27),
                title: 'Junior Product Designer',
                subtitle: 'Atlas Works · On-site · 3 days ago',
                pillLabel: 'Review',
                pillTone: PillTone.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _jobRow({
    required String initial,
    required Color colorBg,
    required Color colorFg,
    required String title,
    required String subtitle,
    required String pillLabel,
    required PillTone pillTone,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: colorBg,
          child: Text(
            initial,
            style: TextStyle(
              color: colorFg,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontSize: 10),
        ),
        trailing: Pill(pillLabel, tone: pillTone),
      ),
    );
  }
}
