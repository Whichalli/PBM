import 'dart:math';

import 'package:hive/hive.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';
import 'package:pbm_app/domain/firebase/firebase.dart';
import 'package:pbm_app/presentation/choose_gender_age_screen/models/choose_gender_age_model.dart';

/// A controller class for the ChooseGenderAgeScreen.
///
/// This class manages the state of the ChooseGenderAgeScreen, including the
/// current chooseGenderAgeModelObj
class ChooseGenderAgeController extends GetxController {
  Rx<ChooseGenderAgeModel> chooseGenderAgeModelObj = ChooseGenderAgeModel().obs;

  RxString gender = ''.obs;
  RxInt age = 1.obs;
  RxBool loading = false.obs;

  /// Navigates to the homeOnboardingContainerScreen when the action is triggered.
  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the homeOnboardingContainerScreen.
  onTapSave() async {
    String babyName = Hive.box('parent').get('baby')['name'];
    await Database.write(
        userId: '${Random.secure().nextInt(88888) + 11111}',
        data: {
          'name': babyName,
          'year': age.value ~/ 12,
          'months': age.value % 12,
          'gender': gender.value,
          'parentId': Authentication.getCurrentUserId(),
          'createdAt': DateTime.now(),
          'note': null
        },
        table: 'baby');
    Get.offNamedUntil(
        AppRoutes.homeOnboardingContainerScreen, (route) => false);
  }
}
