import '../controller/routinefinishedpage_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RoutinefinishedpageScreen.
///
/// This class ensures that the RoutinefinishedpageController is created when the
/// RoutinefinishedpageScreen is first loaded.
class RoutinefinishedpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RoutinefinishedpageController());
  }
}
