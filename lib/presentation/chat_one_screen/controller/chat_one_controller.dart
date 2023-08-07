import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/presentation/chat_one_screen/models/chat_one_model.dart';

/// A controller class for the ChatOneScreen.
///
/// This class manages the state of the ChatOneScreen, including the
/// current chatOneModelObj
class ChatOneController extends GetxController {
  Rx<ChatOneModel> chatOneModelObj = ChatOneModel().obs;
}
