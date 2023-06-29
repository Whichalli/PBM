import '../controller/upcoming_booking_five_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UpcomingBookingFiveScreen.
///
/// This class ensures that the UpcomingBookingFiveController is created when the
/// UpcomingBookingFiveScreen is first loaded.
class UpcomingBookingFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UpcomingBookingFiveController());
  }
}
