import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';
import 'package:pbm_app/domain/firebase/firebase.dart';
import 'package:pbm_app/presentation/upcoming_booking_one_screen/models/upcoming_booking_one_model.dart';
import 'package:pbm_app/widgets/widgets.dart';

/// A controller class for the UpcomingBookingOneScreen.
///
/// This class manages the state of the UpcomingBookingOneScreen, including the
/// current upcomingBookingOneModelObj
class UpcomingBookingOneController extends GetxController {
  Rx<UpcomingBookingOneModel> upcomingBookingOneModelObj =
      UpcomingBookingOneModel().obs;

  RxString consent = ''.obs;
  RxString medication = ''.obs;
  RxString swimming = ''.obs;
  RxString agreement = ''.obs;
  RxBool loading = false.obs;

  RxBool hideSaveBtn = true.obs;

  @override
  void onInit() async {
    await loadData();
    super.onInit();
  }

  loadData() async {
    var data = await Database.read(
        userId: await Authentication.getCurrentUserId(), table: 'consent_form');
    consent.value = data.data()?['consent'];
    medication.value = data.data()?['medication'];
    swimming.value = data.data()?['swimming'];
    agreement.value = data.data()?['agreement'];
    hideSaveBtn.value = data.exists;
  }

  Rx<List<String>> consentOption = Rx(["Yes", "No"]);
  Rx<List<String>> medsOption = Rx(["Yes", "No"]);
  Rx<List<String>> swimOption = Rx(["Yes", "No"]);
  Rx<List<String>> agreementOption = Rx(["Yes", "No"]);

  /// Navigates to the upcomingBookingFourScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBookingFourScreen.
  onTapPbmconsent() {
    Get.offNamed(
      AppRoutes.upcomingBookingFourScreen,
    );
  }

  /// Navigates to the upcomingBookingFourScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBookingFourScreen.
  onTapTxtGobacktodashboard() {
    Get.back();
  }

  /// Navigates to the upcomingBookingFourScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBookingFourScreen.
  onTapSave(context) async {
    try {
      await Database.write(
          userId: await Authentication.getCurrentUserId(),
          data: {
            'consent': consent.value,
            'medication': medication.value,
            'swimming': swimming.value,
            'agreement': agreement.value
          },
          table: 'consent_form');
      Get.back();
    } catch (e) {
      snackbar(
          context: context,
          message: 'Sorry an error occurred, pls try again...',
          icon: Icon(Icons.error_outline),
          color: Colors.red);
    }
  }
}
