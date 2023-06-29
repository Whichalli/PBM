import '../controller/usage_follow_up_negative_selection_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UsageFollowUpNegativeSelectionScreen.
///
/// This class ensures that the UsageFollowUpNegativeSelectionController is created when the
/// UsageFollowUpNegativeSelectionScreen is first loaded.
class UsageFollowUpNegativeSelectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UsageFollowUpNegativeSelectionController());
  }
}
