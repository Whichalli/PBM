import '../controller/pricing_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PricingScreen.
///
/// This class ensures that the PricingController is created when the
/// PricingScreen is first loaded.
class PricingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PricingController());
  }
}
