import '../controller/already_signed_up_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AlreadySignedUpOneScreen.
///
/// This class ensures that the AlreadySignedUpOneController is created when the
/// AlreadySignedUpOneScreen is first loaded.
class AlreadySignedUpOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AlreadySignedUpOneController());
  }
}
