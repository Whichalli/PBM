<<<<<<< HEAD
import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/presentation/chat_screen/models/chat_model.dart';import 'package:flutter/material.dart';/// A controller class for the ChatScreen.
///
/// This class manages the state of the ChatScreen, including the
/// current chatModelObj
class ChatController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<ChatModel> chatModelObj = ChatModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
=======
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/presentation/chat_screen/models/chat_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChatScreen.
///
/// This class manages the state of the ChatScreen, including the
/// current chatModelObj
class ChatController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<ChatModel> chatModelObj = ChatModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
>>>>>>> dev
