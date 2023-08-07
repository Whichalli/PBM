import '../controller/support_v1_0_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SupportV10Screen.
///
/// This class ensures that the SupportV10Controller is created when the
/// SupportV10Screen is first loaded.
class SupportV10Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SupportV10Controller());
  }
}
