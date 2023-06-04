import 'package:devbox/ui/pages/app_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../ui/pages/favorite_page.dart';
import '../ui/pages/home_page.dart';
import '../ui/pages/setting_page.dart';

part 'routers.g.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'rootKey');

@riverpod
GoRouter routerConfig(ref) {
  return GoRouter(
      routes: $appRoutes,
      debugLogDiagnostics: true,
      initialLocation: HomeRoute.path,
      navigatorKey: _rootNavigatorKey);
}

@TypedShellRoute<AppRoute>(routes: [
  TypedGoRoute<HomeRoute>(path: HomeRoute.path),
  TypedGoRoute<SettingRoute>(path: SettingRoute.path),
  TypedGoRoute<FavoriteRoute>(path: FavoriteRoute.path),
])
class AppRoute extends ShellRouteData {
  const AppRoute();

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) =>
      AppPage(contentView: navigator);
}

class HomeRoute extends GoRouteData {
  const HomeRoute();
  static const String path = '/home';

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}

class SettingRoute extends GoRouteData {
  const SettingRoute();
  static const String path = '/settings';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingPage();
}

class FavoriteRoute extends GoRouteData {
  const FavoriteRoute();
  static const String path = '/favorites';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const FavoritePage();
}
