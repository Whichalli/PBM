import 'package:hive/hive.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/presentation/choose_age_screen/models/choose_age_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChooseAgeScreen.
///
/// This class manages the state of the ChooseAgeScreen, including the
/// current chooseAgeModelObj
class ChooseAgeController extends GetxController {
  TextEditingController nameController = TextEditingController();

  Rx<ChooseAgeModel> chooseAgeModelObj = ChooseAgeModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
  }

  onTapProceed() {
    if (nameController.text.isNotEmpty) {
      Hive.box('parent').put('baby', {'name': nameController.text});
      Get.toNamed(
        AppRoutes.chooseGenderAgeScreen,
      );
    }
  }
}
