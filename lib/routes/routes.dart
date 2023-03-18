import 'package:go_router/go_router.dart';
import 'package:student_booknote/views/home/home_view.dart';
import 'package:student_booknote/views/subject/subject_view.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: '/',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/subject',
      name: '/subject',
      builder: (context, state) => const SubjectView(),
    ),
  ],
);