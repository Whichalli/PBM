import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/presentation/upcoming_booking_screen/models/upcoming_booking_model.dart';

/// A controller class for the UpcomingBookingScreen.
///
/// This class manages the state of the UpcomingBookingScreen, including the
/// current upcomingBookingModelObj
class UpcomingBookingController extends GetxController {
  Rx<UpcomingBookingModel> upcomingBookingModelObj = UpcomingBookingModel().obs;
}
