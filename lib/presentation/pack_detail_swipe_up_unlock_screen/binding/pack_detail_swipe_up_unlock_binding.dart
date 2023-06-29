import '../controller/pack_detail_swipe_up_unlock_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PackDetailSwipeUpUnlockScreen.
///
/// This class ensures that the PackDetailSwipeUpUnlockController is created when the
/// PackDetailSwipeUpUnlockScreen is first loaded.
class PackDetailSwipeUpUnlockBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PackDetailSwipeUpUnlockController());
  }
}
