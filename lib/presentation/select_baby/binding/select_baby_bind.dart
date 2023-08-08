import 'package:pbm_app/presentation/select_baby/controller/select_baby_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Home1Screen.
///
/// This class ensures that the Home1Controller is created when the
/// Home1Screen is first loaded.
class SelectBabyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectBabyController());
  }
}
