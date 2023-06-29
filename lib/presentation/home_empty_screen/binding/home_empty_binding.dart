import '../controller/home_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeEmptyScreen.
///
/// This class ensures that the HomeEmptyController is created when the
/// HomeEmptyScreen is first loaded.
class HomeEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeEmptyController());
  }
}
