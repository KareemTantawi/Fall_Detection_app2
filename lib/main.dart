import 'package:fall_detection/core/routes/app_route.dart';
import 'package:fall_detection/core/services/shared_prefrences/shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './fall_detection_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ],
  ).then(
    (_) => runApp(
      FallDetectionApp(
        appRouter: AppRouter(),
      ),
    ),
  );
}
