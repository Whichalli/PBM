import 'dart:developer';
import 'dart:math';

import 'package:hive/hive.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';
import 'package:pbm_app/domain/firebase/firebase.dart';
import 'package:pbm_app/presentation/favourites_with_selection_screen/models/favourites_with_selection_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the FavouritesWithSelectionScreen.
///
/// This class manages the state of the FavouritesWithSelectionScreen, including the
/// current favouritesWithSelectionModelObj
class FavouritesWithSelectionController extends GetxController {
  TextEditingController textfieldController = TextEditingController();

  Rx<FavouritesWithSelectionModel> favouritesWithSelectionModelObj =
      FavouritesWithSelectionModel().obs;
  Rx<bool> loading = Rx(false);

  @override
  void onClose() {
    super.onClose();
    textfieldController.dispose();
  }

  onTapSubmit() async {
    // favouritesWithSelectionModelObj.value.favors.forEach((element) {
    //   log('element = $element');
    // });
    // log('value = ${favouritesWithSelectionModelObj.value.favors}');

    await Database.write(
        userId:
            '${Random.secure().nextInt(88888) + 11111}-${Random.secure().nextInt(88888) + 11111}',
        data: {
          'userId': Authentication.getCurrentUserId(),
          'experience': '${Hive.box('experience').get('pbm_exp')}',
          'favorites': favouritesWithSelectionModelObj.value.favors
        },
        table: 'pbm_user_experience');
    Get.offAllNamed(
      AppRoutes.homeOnboardingContainerScreen,
      
    );
  }
}
