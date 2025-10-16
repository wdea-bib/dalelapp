import 'package:go_router/go_router.dart';

void customNavigate(context, Path) {
  GoRouter.of(context).push(Path);
}
