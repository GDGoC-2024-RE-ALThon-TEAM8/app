import 'package:flutter/material.dart';
import 'package:team8/common/view/page_not_found_screen.dart';
import 'package:team8/core/local_storage_base.dart';
import 'package:team8/feature/home/presentation/view/home_screen.dart';
import 'package:team8/feature/result/presentation/view/result_screen.dart';
import 'package:team8/feature/welcome/presentation/view/welcome_screen.dart';

@immutable
class Routes{
  const Routes._();

  static const String initialRoute = '/';
  static const String notFoundScreenRoute = '/page-not-found';

  static const String welcomeRoute = '/welcome';

  static const String homeRoute = '/home';
  static const String resultRoute = '/result';

  static final Map<String, Widget Function()> _routesMap = {
    initialRoute: () => (prefs.getBool("visited") ?? false) ? const HomeScreen() : const WelcomeScreen(),
    notFoundScreenRoute: () => const PageNotFoundScreen(),

    welcomeRoute: () => const WelcomeScreen(),

    homeRoute: () => const HomeScreen(),
    resultRoute: () => const ResultScreen()
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