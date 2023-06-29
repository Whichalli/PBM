import '../controller/viewroutine_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ViewroutineScreen.
///
/// This class ensures that the ViewroutineController is created when the
/// ViewroutineScreen is first loaded.
class ViewroutineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ViewroutineController());
  }
}
