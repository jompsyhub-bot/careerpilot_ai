import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppShell extends StatelessWidget {
  final Widget child;
  const AppShell({super.key, required this.child});

  static const _tabs = <(String, String, IconData)>[
    ('/home', 'Home', Icons.home_outlined),
    ('/jobs', 'Jobs', Icons.work_outline),
    ('/create', 'Create', Icons.description_outlined),
    ('/tracker', 'Tracker', Icons.schedule),
    ('/practice', 'Practice', Icons.auto_awesome_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;
    final index = _tabs.indexWhere((t) => location.startsWith(t.$1));
    final safeIndex = index < 0 ? 0 : index;

    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: safeIndex,
        onDestinationSelected: (i) => context.go(_tabs[i].$1),
        destinations: [
          for (final t in _tabs)
            NavigationDestination(
              icon: Icon(t.$3, size: 20),
              label: t.$2,
            ),
        ],
      ),
    );
  }
}
