import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:team8/core/local_storage_base.dart';
import 'package:team8/main.dart';

class AppBootstrapper {
  const AppBootstrapper._();

  static Future<void> init({
    required void Function(Widget) runApp
  }) async {
    await LocalStorageBase.init();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    
    runApp(const Team8());
  }
}