import '../controller/pack_detail_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PackDetailContainerScreen.
///
/// This class ensures that the PackDetailContainerController is created when the
/// PackDetailContainerScreen is first loaded.
class PackDetailContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PackDetailContainerController());
  }
}
