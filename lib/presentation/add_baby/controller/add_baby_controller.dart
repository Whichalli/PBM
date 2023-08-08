import 'dart:developer';
import 'dart:math' as Math;

import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';
import 'package:pbm_app/domain/firebase/firebase.dart';
import 'package:pbm_app/presentation/add_baby/models/add_baby_model.dart';
import 'package:pbm_app/presentation/select_baby/models/select_baby_model.dart';
import 'package:pbm_app/widgets/widgets.dart';

/// A controller class for the AddBabyScreen.
///
/// This class manages the state of the AddBabyScreen, including the
/// current AddBabyModelObj
class AddBabyController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  TextEditingController genderController = TextEditingController();

  Rx<AddBabyModel> addBabyModelObj = AddBabyModel().obs;
  var pickedDate = null;
  RxBool loading = false.obs;
  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    dobController.dispose();
    noteController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in addBabyModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
        genderController.text = element.value;
      }
    }
    addBabyModelObj.value.dropdownItemList.refresh();
  }

  save(context) async {
    try {
      await Database.write(
          userId: '${Math.Random.secure().nextInt(88888) + 11111}',
          data: {
            'name': nameController.text,
            'year': {
              DateTime.now().year -
                  DateTime.parse('${dobController.text} 00:00:00.000').year
            },
            'months': {
              DateTime.now().month -
                  DateTime.parse('${dobController.text} 00:00:00.000').month
            },
            'gender': genderController.text,
            'parentId': Authentication.getCurrentUserId(),
            'note': null
          },
          table: 'baby');

      log('month = ${DateTime.parse('${dobController.text} 00:00:00.000').month}');
      // Get.back();
      snackbar(
          context: context,
          message: 'Baby/Child Added',
          icon: Icon(
            Icons.check_circle_outline_outlined,
            color: Colors.green,
          ),
          color: Colors.green);
    } catch (e) {
      e.printError();
      snackbar(
          context: context,
          message: 'Something went wrong, pls try again!!',
          icon: Icon(
            Icons.error_outline,
            color: Colors.redAccent,
          ),
          color: Colors.redAccent);
    }
  }
}
