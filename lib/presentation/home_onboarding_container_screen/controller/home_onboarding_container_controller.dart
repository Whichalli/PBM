import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';
import 'package:pbm_app/domain/firebase/firebase.dart';
import 'package:pbm_app/presentation/home_onboarding_container_screen/models/home_onboarding_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomeOnboardingContainerScreen.
///
/// This class manages the state of the HomeOnboardingContainerScreen, including the
/// current homeOnboardingContainerModelObj
class HomeOnboardingContainerController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<HomeOnboardingContainerModel> homeOnboardingContainerModelObj =
      HomeOnboardingContainerModel().obs;
  DocumentReference<Map<String, dynamic>>? userDetails;
  RxString userId = ''.obs;
  // Authentication auth = Authentication();
  RxBool searching = false.obs;
  // Rx<List<Map<String, dynamic>>> searchData =
  //     [].obs as Rx<List<Map<String, dynamic>>>;
  var data;
  @override
  void onInit() {
    getUserDetails();
    data = Database.search(value: searchController.text, table: 'employee');
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }

  getUserDetails() async {
    userId.value = await Authentication.getCurrentUserId();
  }
}
