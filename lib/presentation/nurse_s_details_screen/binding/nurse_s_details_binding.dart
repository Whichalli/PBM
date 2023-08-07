import '../controller/nurse_s_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NurseSDetailsScreen.
///
/// This class ensures that the NurseSDetailsController is created when the
/// NurseSDetailsScreen is first loaded.
class NurseSDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NurseSDetailsController());
  }
}
