import 'package:get/get.dart';

import '../controller/controller.dart';

/// A binding class for the OnboardingTwoScreen.
///
/// This class ensures that the OnboardingTwoController is created when the
/// OnboardingTwoScreen is first loaded.
class NurseProfileDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NurseProfileDetailsController());
  }
}
