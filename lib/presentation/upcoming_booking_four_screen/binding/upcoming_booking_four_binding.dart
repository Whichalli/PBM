import '../controller/upcoming_booking_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UpcomingBookingFourScreen.
///
/// This class ensures that the UpcomingBookingFourController is created when the
/// UpcomingBookingFourScreen is first loaded.
class UpcomingBookingFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UpcomingBookingFourController());
  }
}
