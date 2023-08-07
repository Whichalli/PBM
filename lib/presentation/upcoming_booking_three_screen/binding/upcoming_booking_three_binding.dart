import '../controller/upcoming_booking_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UpcomingBookingThreeScreen.
///
/// This class ensures that the UpcomingBookingThreeController is created when the
/// UpcomingBookingThreeScreen is first loaded.
class UpcomingBookingThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UpcomingBookingThreeController());
  }
}
