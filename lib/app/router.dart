import 'package:go_router/go_router.dart';
import '../shared/widgets/app_shell.dart';
import '../features/home/presentation/home_screen.dart';
import '../features/jobs/presentation/jobs_screen.dart';
import '../features/create/presentation/create_screen.dart';
import '../features/tracker/presentation/tracker_screen.dart';
import '../features/practice/presentation/practice_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    ShellRoute(
      builder: (_, __, child) => AppShell(child: child),
      routes: [
        GoRoute(path: '/home', builder: (_, __) => const HomeScreen()),
        GoRoute(path: '/jobs', builder: (_, __) => const JobsScreen()),
        GoRoute(path: '/create', builder: (_, __) => const CreateScreen()),
        GoRoute(path: '/tracker', builder: (_, __) => const TrackerScreen()),
        GoRoute(path: '/practice', builder: (_, __) => const PracticeScreen()),
      ],
    ),
  ],
);
