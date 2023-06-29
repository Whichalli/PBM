import '../controller/tasktimerpage_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TasktimerpageScreen.
///
/// This class ensures that the TasktimerpageController is created when the
/// TasktimerpageScreen is first loaded.
class TasktimerpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TasktimerpageController());
  }
}
