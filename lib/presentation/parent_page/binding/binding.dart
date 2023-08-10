import '../controller/controller.dart';
import 'package:get/get.dart';

/// A binding class for the ParentDashboardScreen.
///
/// This class ensures that the ParentDashboardController is created when the
/// ParentDashboardScreen is first loaded.
class ParentDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ParentDashboardScreenController());
  }
}
