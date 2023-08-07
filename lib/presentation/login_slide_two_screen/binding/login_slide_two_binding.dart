import '../controller/login_slide_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginSlideTwoScreen.
///
/// This class ensures that the LoginSlideTwoController is created when the
/// LoginSlideTwoScreen is first loaded.
class LoginSlideTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginSlideTwoController());
  }
}
