import '../controller/login_slide_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginSlideThreeScreen.
///
/// This class ensures that the LoginSlideThreeController is created when the
/// LoginSlideThreeScreen is first loaded.
class LoginSlideThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginSlideThreeController());
  }
}
