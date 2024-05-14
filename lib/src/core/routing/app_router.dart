import 'package:flutter/material.dart' show GlobalKey, NavigatorState;
import 'package:github_search_test/src/core/routing/app_routes.dart';
import 'package:github_search_test/src/features/item_screen/ui/item_screen.dart';
import 'package:github_search_test/src/features/search/search_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'root');
  late final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    routes: <GoRoute>[
      GoRoute(
          name: AppRoutes.search.name,
          path: AppRoutes.search.path,
          builder: (context, state) => const SearchScreen(),
          routes: <RouteBase>[
            GoRoute(
              name: AppRoutes.item.name,
              path: AppRoutes.item.path,
              builder: (context, state) {
                final String extraString =
                    GoRouterState.of(context).extra! as String;

                return ItemScreen(repoUrl: extraString);
              },
            ),
          ]),
    ],
  );
}
