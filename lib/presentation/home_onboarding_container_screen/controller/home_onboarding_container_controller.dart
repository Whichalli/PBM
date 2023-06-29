import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/presentation/home_onboarding_container_screen/models/home_onboarding_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the HomeOnboardingContainerScreen.
///
/// This class manages the state of the HomeOnboardingContainerScreen, including the
/// current homeOnboardingContainerModelObj
class HomeOnboardingContainerController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<HomeOnboardingContainerModel> homeOnboardingContainerModelObj = HomeOnboardingContainerModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
