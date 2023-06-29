import '../controller/upcoming_booking_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UpcomingBookingTwoScreen.
///
/// This class ensures that the UpcomingBookingTwoController is created when the
/// UpcomingBookingTwoScreen is first loaded.
class UpcomingBookingTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UpcomingBookingTwoController());
  }
}
