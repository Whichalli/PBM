import 'package:pbm_app/presentation/ai_screen/chat.dart'; // Import your ChatPage class
import 'package:get/get.dart';

import 'package:pbm_app/presentation/ai_screen/controller/chat_controller.dart';

/// A binding class for the AiScreen.
///
/// This class ensures that the necessary controllers and dependencies are
/// created when the AiScreen is first loaded.
class AiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatController()); // Replace with your ChatController if needed
    // Add other controllers and dependencies as needed
  }
}
