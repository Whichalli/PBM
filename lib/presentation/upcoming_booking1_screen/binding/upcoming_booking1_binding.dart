import '../controller/upcoming_booking1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UpcomingBooking1Screen.
///
/// This class ensures that the UpcomingBooking1Controller is created when the
/// UpcomingBooking1Screen is first loaded.
class UpcomingBooking1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UpcomingBooking1Controller());
  }
}
