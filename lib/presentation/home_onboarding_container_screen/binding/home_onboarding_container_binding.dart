import '../controller/home_onboarding_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeOnboardingContainerScreen.
///
/// This class ensures that the HomeOnboardingContainerController is created when the
/// HomeOnboardingContainerScreen is first loaded.
class HomeOnboardingContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeOnboardingContainerController());
  }
}
