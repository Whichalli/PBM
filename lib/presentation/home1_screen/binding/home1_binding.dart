import '../controller/home1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Home1Screen.
///
/// This class ensures that the Home1Controller is created when the
/// Home1Screen is first loaded.
class Home1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Home1Controller());
  }
}
