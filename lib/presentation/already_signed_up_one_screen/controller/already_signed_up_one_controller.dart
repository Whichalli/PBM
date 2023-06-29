import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/presentation/already_signed_up_one_screen/models/already_signed_up_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the AlreadySignedUpOneScreen.
///
/// This class manages the state of the AlreadySignedUpOneScreen, including the
/// current alreadySignedUpOneModelObj
class AlreadySignedUpOneController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

TextEditingController group3849Controller = TextEditingController();

Rx<AlreadySignedUpOneModel> alreadySignedUpOneModelObj = AlreadySignedUpOneModel().obs;

Rx<String> radioGroup = "".obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); emailController.dispose(); passwordController.dispose(); group3849Controller.dispose(); } 
onSelected(dynamic value) { for (var element in alreadySignedUpOneModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} alreadySignedUpOneModelObj.value.dropdownItemList.refresh(); } 
 }
