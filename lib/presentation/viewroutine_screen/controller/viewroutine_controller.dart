import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/presentation/viewroutine_screen/models/viewroutine_model.dart';import 'package:flutter/material.dart';/// A controller class for the ViewroutineScreen.
///
/// This class manages the state of the ViewroutineScreen, including the
/// current viewroutineModelObj
class ViewroutineController extends GetxController {TextEditingController taskdescriptionController = TextEditingController();

Rx<ViewroutineModel> viewroutineModelObj = ViewroutineModel().obs;

@override void onClose() { super.onClose(); taskdescriptionController.dispose(); } 
 }
