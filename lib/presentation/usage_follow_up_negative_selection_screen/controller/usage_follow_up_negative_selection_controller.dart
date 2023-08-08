<<<<<<< HEAD
import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/presentation/usage_follow_up_negative_selection_screen/models/usage_follow_up_negative_selection_model.dart';import 'package:flutter/material.dart';/// A controller class for the UsageFollowUpNegativeSelectionScreen.
///
/// This class manages the state of the UsageFollowUpNegativeSelectionScreen, including the
/// current usageFollowUpNegativeSelectionModelObj
class UsageFollowUpNegativeSelectionController extends GetxController {TextEditingController timeController = TextEditingController();

TextEditingController unsureController = TextEditingController();

Rx<UsageFollowUpNegativeSelectionModel> usageFollowUpNegativeSelectionModelObj = UsageFollowUpNegativeSelectionModel().obs;

Rx<String> radioGroup = "".obs;

@override void onClose() { super.onClose(); timeController.dispose(); unsureController.dispose(); } 
 }
=======
import 'package:hive/hive.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/presentation/usage_follow_up_negative_selection_screen/models/usage_follow_up_negative_selection_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the UsageFollowUpNegativeSelectionScreen.
///
/// This class manages the state of the UsageFollowUpNegativeSelectionScreen, including the
/// current usageFollowUpNegativeSelectionModelObj
class UsageFollowUpNegativeSelectionController extends GetxController {
  TextEditingController timeController = TextEditingController();

  TextEditingController unsureController = TextEditingController();

  Rx<UsageFollowUpNegativeSelectionModel>
      usageFollowUpNegativeSelectionModelObj =
      UsageFollowUpNegativeSelectionModel().obs;

  Rx<String> radioGroup = "".obs;

  onTapNext() {
    Hive.box('experience').put('pbm_exp', radioGroup.value);
    Get.toNamed(
      AppRoutes.favouritesWithSelectionScreen,
    );
  }

  @override
  void onClose() {
    super.onClose();
    timeController.dispose();
    unsureController.dispose();
  }
}
>>>>>>> dev
