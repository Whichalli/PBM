import '../controller/past_booking_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PastBookingDetailsScreen.
///
/// This class ensures that the PastBookingDetailsController is created when the
/// PastBookingDetailsScreen is first loaded.
class PastBookingDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PastBookingDetailsController());
  }
}
