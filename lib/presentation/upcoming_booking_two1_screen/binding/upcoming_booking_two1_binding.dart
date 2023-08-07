import '../controller/upcoming_booking_two1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UpcomingBookingTwo1Screen.
///
/// This class ensures that the UpcomingBookingTwo1Controller is created when the
/// UpcomingBookingTwo1Screen is first loaded.
class UpcomingBookingTwo1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UpcomingBookingTwo1Controller());
  }
}
