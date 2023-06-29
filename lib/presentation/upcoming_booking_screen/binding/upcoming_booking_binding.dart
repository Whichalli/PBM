import '../controller/upcoming_booking_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UpcomingBookingScreen.
///
/// This class ensures that the UpcomingBookingController is created when the
/// UpcomingBookingScreen is first loaded.
class UpcomingBookingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UpcomingBookingController());
  }
}
