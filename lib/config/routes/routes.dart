import 'package:flutter/material.dart';
import 'package:team8/common/view/page_not_found_screen.dart';
import 'package:team8/feature/home/presentation/view/home_screen.dart';

@immutable
class Routes{
  const Routes._();

  static const String initialRoute = '/';
  static const String notFoundScreenRoute = '/page-not-found';

  static final Map<String, Widget Function()> _routesMap = {
    initialRoute: () => const HomeScreen(),
    notFoundScreenRoute: () => const PageNotFoundScreen()
  };

  static Widget Function() getRoute(String? routeName) {
    return routeExist(routeName)
        ? _routesMap[routeName]!
        : _routesMap[Routes.notFoundScreenRoute]!;
  }

  static bool routeExist(String? routeName){
    return _routesMap.containsKey(routeName);
  }
}