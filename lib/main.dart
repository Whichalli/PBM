<<<<<<< HEAD
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/app_export.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
=======
import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';

import 'core/app_export.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Hive.initFlutter();
>>>>>>> dev
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(MyApp());
  });
<<<<<<< HEAD
=======
  await Hive.openBox('parent');
  await Hive.openBox('sleepTimer');
  await Hive.openBox('employee');
  await Hive.openBox('baby');
  await Hive.openBox('booking');
  await Hive.openBox('experience');
  await Hive.openBox('white_noise');
  String? acctType = await Authentication.isLoggedIn();
  if (acctType != null) {
    if (acctType == 'parent') {
      Get.offNamedUntil(
        AppRoutes.homeOnboardingContainerScreen, (route) => false);
    }else{
      Get.offNamedUntil(
        AppRoutes.dashboardScreen, (route) => false);
    }
  }
>>>>>>> dev
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
<<<<<<< HEAD
          visualDensity: VisualDensity.standard,
      ),
      translations: AppLocalization(),
      locale: Get.deviceLocale, //for setting localization strings
      fallbackLocale: Locale('en', 'US'),
      title: 'pbm_care',
=======
          sliderTheme:
              SliderThemeData(thumbShape: SliderComponentShape.noThumb),
          visualDensity: VisualDensity.standard,
          primarySwatch: Colors.pink),
      translations: AppLocalization(),
      locale: Get.deviceLocale, //for setting localization strings
      fallbackLocale: Locale('en', 'US'),
      title: 'PBM Care',
>>>>>>> dev
      initialBinding: InitialBindings(),
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.pages,
    );
  }
}
