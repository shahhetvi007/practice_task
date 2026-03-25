import 'package:go_router/go_router.dart';
import 'src/modules/location_search/location_search.dart';
import 'src/modules/map/map.dart';

class AppRoutes {
  static const String root = '/';
  static const String map = '/map';

  static final GoRouter router = GoRouter(
    initialLocation: root,
    routes: [
      GoRoute(
        path: root,
        builder: (context, state) => const LocationSearchScreen(),
      ),
      GoRoute(
        path: map,
        builder: (context, state) {
          final place = state.extra as LocationPlace;
          return MapScreen(selectedLocation: place);
        },
      ),
    ],
  );
}
