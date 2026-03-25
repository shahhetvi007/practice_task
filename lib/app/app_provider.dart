import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';
import '../app_routes.dart';

part 'app_provider.g.dart';

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  return AppRoutes.router;
}
