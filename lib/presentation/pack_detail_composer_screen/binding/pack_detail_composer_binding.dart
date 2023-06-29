import '../controller/pack_detail_composer_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PackDetailComposerScreen.
///
/// This class ensures that the PackDetailComposerController is created when the
/// PackDetailComposerScreen is first loaded.
class PackDetailComposerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PackDetailComposerController());
  }
}
