import '../controller/services_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ServicesScreen.
///
/// This class ensures that the ServicesController is created when the
/// ServicesScreen is first loaded.
class ServicesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServicesController());
  }
}
