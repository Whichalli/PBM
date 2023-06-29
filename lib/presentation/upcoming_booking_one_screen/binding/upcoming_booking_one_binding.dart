import '../controller/upcoming_booking_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UpcomingBookingOneScreen.
///
/// This class ensures that the UpcomingBookingOneController is created when the
/// UpcomingBookingOneScreen is first loaded.
class UpcomingBookingOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UpcomingBookingOneController());
  }
}
