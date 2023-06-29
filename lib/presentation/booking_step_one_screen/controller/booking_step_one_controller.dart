import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/presentation/booking_step_one_screen/models/booking_step_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the BookingStepOneScreen.
///
/// This class manages the state of the BookingStepOneScreen, including the
/// current bookingStepOneModelObj
class BookingStepOneController extends GetxController {TextEditingController radiobuttontextController = TextEditingController();

Rx<BookingStepOneModel> bookingStepOneModelObj = BookingStepOneModel().obs;

Rx<String> radioGroup = "".obs;

Rx<String> radioGroup1 = "".obs;

Rx<String> radioGroup2 = "".obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

@override void onClose() { super.onClose(); radiobuttontextController.dispose(); } 
onSelected(dynamic value) { for (var element in bookingStepOneModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} bookingStepOneModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in bookingStepOneModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} bookingStepOneModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in bookingStepOneModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} bookingStepOneModelObj.value.dropdownItemList2.refresh(); } 
 }
