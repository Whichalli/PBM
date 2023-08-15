import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';

import 'domain/firebase/authentication.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  loadUserData() async {
    String? acctType = await Authentication.isLoggedIn();
    if (acctType != null) {
      if (acctType == 'parent') {
        Get.offNamedUntil(
            AppRoutes.homeOnboardingContainerScreen, (route) => false);
      } else {
        Get.offNamedUntil(AppRoutes.dashboardScreen, (route) => false);
      }
    } else {
      Get.offAllNamed(AppRoutes.signinRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    loadUserData();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CustomImageView(
          imagePath: ImageConstant.logo,
          height: 150,
        ),
      ),
    );
  }
}
