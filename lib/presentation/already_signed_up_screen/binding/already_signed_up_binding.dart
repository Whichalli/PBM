import '../controller/already_signed_up_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AlreadySignedUpScreen.
///
/// This class ensures that the AlreadySignedUpController is created when the
/// AlreadySignedUpScreen is first loaded.
class AlreadySignedUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AlreadySignedUpController());
  }
}
