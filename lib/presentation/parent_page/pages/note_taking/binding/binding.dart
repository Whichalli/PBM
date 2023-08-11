import '../controller/controller.dart';
import 'package:get/get.dart';

/// A binding class for the BookedNurseScreen.
///
/// This class ensures that the BookedNurseController is created when the
/// BookedNurseScreen is first loaded.
class NoteTakingScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoteTakingScreenController());
  }
}
