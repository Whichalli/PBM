import '../controller/appointments_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AppointmentsScreen.
///
/// This class ensures that the AppointmentsController is created when the
/// AppointmentsScreen is first loaded.
class AppointmentsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppointmentsController());
  }
}
