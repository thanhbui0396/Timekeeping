import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:timekeeping_app/apps/router/router_name.dart';

import 'package:timekeeping_app/pages/auth/login_page.dart';
import 'package:timekeeping_app/pages/auth/register_page.dart';
import 'package:timekeeping_app/pages/options_page/options_page.dart';

class RouterConfigCustom {
  static final GoRouter router = GoRouter(
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
          return const OptionesPage();
        },
        routes: const [],
      ),
    ],
  );
}
