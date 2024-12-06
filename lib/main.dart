import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team8/app_bootstrapper.dart';
import 'package:team8/config/routes/app_router.dart';
import 'package:team8/helper/constants/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  AppBootstrapper.init(runApp: runApp);
}

class Team8 extends StatelessWidget {
  const Team8({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'TEAM 8',
        theme: AppTheme.light(),
        onGenerateRoute: AppRouter.generateRoute,
        navigatorKey: AppRouter.navigatorKey,
        //navigatorObservers: [seoRouteObserver], NOT WEB.
      ),
    );
  }
}