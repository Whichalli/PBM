
import 'package:get/get.dart';

import '../controller/pumping_controller.dart';

/// A binding class for the PumpingScreen.
///
/// This class ensures that the PumpingController is created when the
/// PumpingScreen is first loaded.
class PumpingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PumpingController());
  }
}
