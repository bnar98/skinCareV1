import 'package:flutter/material.dart';
import 'package:skin_care_v1/features/home/view.dart';
import 'features/favorites/view.dart';
import 'features/login/view.dart';
import 'package:go_router/go_router.dart';
import 'features/welcome/view.dart';
import 'layouts/mainLayout.dart';

final GlobalKey<NavigatorState> _sectionANavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'sectionANav');
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = GoRouter(routes: [
    // GoRoute(
    //   path: '/',
    //   builder: (context, state) => const HomePage(),
    // ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (BuildContext context, GoRouterState state,
          StatefulNavigationShell navigationShell) {
        return ScaffoldWithNavBar(navigationShell: navigationShell);
      },
      branches: <StatefulShellBranch>[
        // The route branch for the first tab of the bottom navigation bar.
        StatefulShellBranch(
          navigatorKey: _sectionANavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              path: '/',
              builder: (BuildContext context, GoRouterState state) =>
                  const HomePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/favorites',
              builder: (BuildContext context, GoRouterState state) =>
                  const FavoritesPage(),
            ),
          ],
        ),
      ],
    )
  ]);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
