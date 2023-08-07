import 'package:pbm_app/presentation/white_noise_page/controller/controller.dart';

import 'package:get/get.dart';

/// A binding class for the NowPlayingScreen.
///
/// This class ensures that the NowPlayingController is created when the
/// NowPlayingScreen is first loaded.
class WhiteNoiseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WhiteNoiseController());
  }
}