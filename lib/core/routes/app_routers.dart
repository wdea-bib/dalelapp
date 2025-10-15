import 'package:dalelapp/features/splash/presention/views/splash_views.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [GoRoute(path: "/", builder: (context, state) => SplashViews())],
);
