import '../controller/upcoming_booking_one1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UpcomingBookingOne1Screen.
///
/// This class ensures that the UpcomingBookingOne1Controller is created when the
/// UpcomingBookingOne1Screen is first loaded.
class UpcomingBookingOne1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UpcomingBookingOne1Controller());
  }
}
