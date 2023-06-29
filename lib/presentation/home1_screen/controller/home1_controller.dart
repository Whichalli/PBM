import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/presentation/home1_screen/models/home1_model.dart';import 'package:flutter/material.dart';/// A controller class for the Home1Screen.
///
/// This class manages the state of the Home1Screen, including the
/// current home1ModelObj
class Home1Controller extends GetxController {TextEditingController searchController = TextEditingController();

Rx<Home1Model> home1ModelObj = Home1Model().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
