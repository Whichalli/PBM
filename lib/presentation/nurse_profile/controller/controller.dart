import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:pbm_app/domain/firebase/firebase.dart';

import '../../../routes/app_routes.dart';

class NurseProfileDetailsController extends GetxController {
  late final String employeeId;
  late final bool isNurseLoggedIn;
  // Future<DocumentSnapshot<Map<String, dynamic>>>? profileDetails;
  late final Map<String, dynamic> employeeData;
  @override
  void onInit() {
    employeeId = Get.arguments['employeeId'];
    employeeData = Get.arguments['data'];
    // isNurseLoggedIn = Get.arguments['isNurseLoggedIn'];
    // profileDetails = Database.read(userId: employeeId, table: 'employee');
    // TODO: implement onInit
    super.onInit();
  }

  bookEmployee({required String employeeId}) {
    log('employeeId = $employeeId');
    Get.toNamed(AppRoutes.bookingStepOneScreen,
        arguments: {'employeeId': employeeId});
  }
}
