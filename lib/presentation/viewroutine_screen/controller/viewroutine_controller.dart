import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/presentation/viewroutine_screen/models/viewroutine_model.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/presentation/viewroutine_screen/pages/solid_page.dart';

import '../pages/bottle_page.dart';
import '../pages/breast_page.dart';
import 'bottle_controller.dart';
import 'breast_page_controller.dart';

/// A controller class for the ViewroutineScreen.
///
/// This class manages the state of the ViewroutineScreen, including the
/// current viewroutineModelObj
class ViewroutineController extends GetxController {
  final breastController = Get.put(BreastController());
  final bottleCOntroller = Get.put(BottleController());
  Rx<ViewroutineModel> viewroutineModelObj = ViewroutineModel().obs;
  PageController? pageController;

  List<Widget> pages = [BreastPage(), BottlePage(), SolidPage()];

  List tabs = [
    {'value': 'Breast', 'active': true},
    {'value': 'Bottle', 'active': false},
    {'value': 'Solid', 'active': false},
  ];

  swapPage(int pageIndex) {
    for (var e in tabs) {
      e['active'] = false;
    }
    tabs[pageIndex]['active'] = true;
    pageController?.animateToPage(pageIndex,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
    update();
  }

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
