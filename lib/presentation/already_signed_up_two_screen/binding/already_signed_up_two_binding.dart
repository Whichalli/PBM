import '../controller/already_signed_up_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AlreadySignedUpTwoScreen.
///
/// This class ensures that the AlreadySignedUpTwoController is created when the
/// AlreadySignedUpTwoScreen is first loaded.
class AlreadySignedUpTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AlreadySignedUpTwoController());
  }
}
