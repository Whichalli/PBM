import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/presentation/routinefinishedpage_screen/models/routinefinishedpage_model.dart';import 'package:flutter/material.dart';/// A controller class for the RoutinefinishedpageScreen.
///
/// This class manages the state of the RoutinefinishedpageScreen, including the
/// current routinefinishedpageModelObj
class RoutinefinishedpageController extends GetxController {TextEditingController describeactivitController = TextEditingController();

Rx<RoutinefinishedpageModel> routinefinishedpageModelObj = RoutinefinishedpageModel().obs;

@override void onClose() { super.onClose(); describeactivitController.dispose(); } 
 }
