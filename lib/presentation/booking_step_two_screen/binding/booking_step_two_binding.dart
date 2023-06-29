import '../controller/booking_step_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BookingStepTwoScreen.
///
/// This class ensures that the BookingStepTwoController is created when the
/// BookingStepTwoScreen is first loaded.
class BookingStepTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingStepTwoController());
  }
}
