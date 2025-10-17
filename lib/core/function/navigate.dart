import 'package:go_router/go_router.dart';

void CustomNavigate(context, path) {
  GoRouter.of(context).push(path);
}

void CustomReplacementNavigate(context, path) {
  GoRouter.of(context).pushReplacement(path);
}
