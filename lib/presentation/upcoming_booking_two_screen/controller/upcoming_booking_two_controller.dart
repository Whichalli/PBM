import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/presentation/upcoming_booking_two_screen/models/upcoming_booking_two_model.dart';

/// A controller class for the UpcomingBookingTwoScreen.
///
/// This class manages the state of the UpcomingBookingTwoScreen, including the
/// current upcomingBookingTwoModelObj
class UpcomingBookingTwoController extends GetxController {
  Rx<UpcomingBookingTwoModel> upcomingBookingTwoModelObj =
      UpcomingBookingTwoModel().obs;
}
