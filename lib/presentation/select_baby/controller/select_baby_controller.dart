import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/presentation/select_baby/models/select_baby_model.dart';

/// A controller class for the SelectBabyScreen.
///
/// This class manages the state of the SelectBabyScreen, including the
/// current SelectBabyModelObj
class SelectBabyController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SelectBabyModel> SelectBabyModelObj = SelectBabyModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }

  toAddBabyPage() {
    Get.toNamed(AppRoutes.addBabyScreen);
  }
}
