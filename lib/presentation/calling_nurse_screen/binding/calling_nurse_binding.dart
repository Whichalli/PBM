import '../controller/calling_nurse_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CallingNurseScreen.
///
/// This class ensures that the CallingNurseController is created when the
/// CallingNurseScreen is first loaded.
class CallingNurseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CallingNurseController());
  }
}
