import '../controller/newroutine_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NewroutineScreen.
///
/// This class ensures that the NewroutineController is created when the
/// NewroutineScreen is first loaded.
class NewroutineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NewroutineController());
  }
}
