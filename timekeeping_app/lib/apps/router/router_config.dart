import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:timekeeping_app/apps/router/router_name.dart';
import 'package:timekeeping_app/pages/auth/login_page.dart';
import 'package:timekeeping_app/pages/auth/register_page.dart';
import 'package:timekeeping_app/pages/home/option_person/bottom_nav_bar.dart';
import 'package:timekeeping_app/pages/home/option_person/home_page/create_book/create_book_page.dart';
import 'package:timekeeping_app/pages/home/option_person/home_page/home_page.dart';
import 'package:timekeeping_app/pages/home/option_person/settings_page/settings_page.dart';
import 'package:timekeeping_app/pages/options_page/options_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

class RouterConfigCustom extends ChangeNotifier {
  // static final GoRouter routerLogin = GoRouter(
  //   initialLocation: RouterPath.loginPage,
  //   debugLogDiagnostics: true,
  //   routes: <RouteBase>[
  //     GoRoute(
  //       path: RouterPath.loginPage,
  //       name: RouterName.loginPage,
  //       builder: (BuildContext context, GoRouterState state) {
  //         return const LoginPage();
  //       },
  //       routes: [
  //         GoRoute(
  //           path: RouterPath.regisPage,
  //           name: RouterName.regisPage,
  //           builder: (BuildContext context, GoRouterState state) {
  //             return const RegisterPage();
  //           },
  //           routes: const [],
  //         ),
  //       ],
  //     ),
  //     GoRoute(
  //       path: RouterPath.optionsPage,
  //       name: RouterName.optionsPage,
  //       builder: (BuildContext context, GoRouterState state) {
  //         return const OptionsPage();
  //       },
  //       routes: const [],
  //     ),
  //   ],
  // );

  static final GoRouter router = GoRouter(
    initialLocation: RouterPath.homePage,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: <RouteBase>[
      StatefulShellRoute.indexedStack(
        builder: (BuildContext context, GoRouterState state,
            StatefulNavigationShell navigationShell) {
          return BottomNavBar(
            navigationShell: navigationShell,
          );
        },
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                name: RouterPath.homePage,
                path: RouterPath.homePage,
                builder: (BuildContext context, GoRouterState state) {
                  return const HomePage();
                },
                routes: const <RouteBase>[],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: RouterPath.settingsPage,
                name: RouterName.settingsPage,
                builder: (BuildContext context, GoRouterState state) {
                  return const SettingsPage();
                },
                routes: const <RouteBase>[],
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: RouterPath.createBookPage,
        name: RouterName.createBookPage,
        builder: (BuildContext context, GoRouterState state) {
          return const CreateBookPage();
        },
      ),
    ],
  );

  @override
  void dispose() {
    router.refresh();
    super.dispose();
  }
}

class LoginRouterConfigCustom extends ChangeNotifier {
  static final GoRouter routerLogin = GoRouter(
    initialLocation: RouterPath.loginPage,
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      GoRoute(
        path: RouterPath.loginPage,
        name: RouterName.loginPage,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginPage();
        },
        routes: [
          GoRoute(
            path: RouterPath.regisPage,
            name: RouterName.regisPage,
            builder: (BuildContext context, GoRouterState state) {
              return const RegisterPage();
            },
            routes: const [],
          ),
        ],
      ),
      GoRoute(
        path: RouterPath.optionsPage,
        name: RouterName.optionsPage,
        builder: (BuildContext context, GoRouterState state) {
          return const OptionsPage();
        },
        routes: const [],
      ),
    ],
  );

  @override
  void dispose() {
    routerLogin.refresh();
    super.dispose();
  }

  // static final GoRouter router = GoRouter(

  //   initialLocation: RouterPath.homePage,
  //   debugLogDiagnostics: true,
  //   routes: <RouteBase>[
  //     StatefulShellRoute.indexedStack(
  //       builder: (BuildContext context, GoRouterState state,
  //           StatefulNavigationShell navigationShell) {
  //         return BottomNavBar(
  //           navigationShell: navigationShell,
  //         );
  //       },
  //       branches: <StatefulShellBranch>[
  //         StatefulShellBranch(
  //           routes: <RouteBase>[
  //             GoRoute(
  //               name: RouterPath.homePage,
  //               path: RouterPath.homePage,
  //               builder: (BuildContext context, GoRouterState state) {
  //                 return const HomePage();
  //               },
  //               routes: const <RouteBase>[],
  //             ),
  //           ],
  //         ),
  //         StatefulShellBranch(
  //           routes: <RouteBase>[
  //             GoRoute(
  //               path: RouterPath.settingsPage,
  //               name: RouterName.settingsPage,
  //               builder: (BuildContext context, GoRouterState state) {
  //                 return const SettingsPage();
  //               },
  //               routes: const <RouteBase>[],
  //             ),
  //           ],
  //         ),
  //       ],
  //     ),
  //     GoRoute(
  //       path: RouterPath.createBookPage,
  //       name: RouterName.createBookPage,
  //       builder: (BuildContext context, GoRouterState state) {
  //         return const CreateBookPage();
  //       },
  //     ),
  //   ],
  // );
}
