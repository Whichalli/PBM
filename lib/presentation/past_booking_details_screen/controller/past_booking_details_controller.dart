import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/presentation/past_booking_details_screen/models/past_booking_details_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PastBookingDetailsScreen.
///
/// This class manages the state of the PastBookingDetailsScreen, including the
/// current pastBookingDetailsModelObj
class PastBookingDetailsController extends GetxController {
  TextEditingController commentController = TextEditingController();

  Rx<PastBookingDetailsModel> pastBookingDetailsModelObj =
      PastBookingDetailsModel().obs;

  @override
  void onClose() {
    super.onClose();
    commentController.dispose();
  }
}
