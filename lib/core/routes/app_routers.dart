import 'package:dalelapp/features/auth/presentation/views/sign_in.dart';
import 'package:dalelapp/features/auth/presentation/views/sing_up.dart';
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
    GoRoute(path: "/signUp", builder: (context, state) => const SignUpViews()),
    GoRoute(path: "/signIn", builder: (context, state) => const SignInView()),
  ],
);
