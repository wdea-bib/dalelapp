import 'package:go_router/go_router.dart';

// ignore: non_constant_identifier_names
void CustomNavigate(context, path) {
  GoRouter.of(context).push(path);
}

// ignore: non_constant_identifier_names
void CustomReplacementNavigate(context, path) {
  GoRouter.of(context).pushReplacement(path);
}
