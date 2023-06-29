import '../controller/booking_step_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BookingStepOneScreen.
///
/// This class ensures that the BookingStepOneController is created when the
/// BookingStepOneScreen is first loaded.
class BookingStepOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingStepOneController());
  }
}
