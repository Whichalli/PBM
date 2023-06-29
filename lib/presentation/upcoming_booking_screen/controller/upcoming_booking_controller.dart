import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/presentation/upcoming_booking_screen/models/upcoming_booking_model.dart';/// A controller class for the UpcomingBookingScreen.
///
/// This class manages the state of the UpcomingBookingScreen, including the
/// current upcomingBookingModelObj
class UpcomingBookingController extends GetxController {Rx<UpcomingBookingModel> upcomingBookingModelObj = UpcomingBookingModel().obs;

 }
