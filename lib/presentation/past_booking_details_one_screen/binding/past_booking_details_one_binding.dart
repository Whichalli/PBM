import '../controller/past_booking_details_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PastBookingDetailsOneScreen.
///
/// This class ensures that the PastBookingDetailsOneController is created when the
/// PastBookingDetailsOneScreen is first loaded.
class PastBookingDetailsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PastBookingDetailsOneController());
  }
}
