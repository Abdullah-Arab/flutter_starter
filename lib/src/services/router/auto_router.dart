import '/src/screens/auth/auth_screen.dart';
import '/src/screens/home/home_screen.dart';
import '/src/screens/landing/landing_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'auto_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: AuthRoute.page),
        AutoRoute(page: HomeRoute.page, initial: true),
      ];
}
