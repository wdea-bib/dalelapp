import 'package:dalelapp/features/on_boarding/presention/views/on_boarding_views.dart';
import 'package:dalelapp/features/splash/presention/views/splash_views.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: "/", builder: (context, state) => const SplashViews()),
    GoRoute(
      path: "/onBoarding",
      builder: (context, state) => const OnBoardingViews(),
    ),
  ],
);
