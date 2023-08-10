import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/presentation/nurse_dashboard_page/pages/chat_screen/models/chat_model.dart';
import 'package:flutter/material.dart';

import '../../../../../domain/firebase/authentication.dart';

/// A controller class for the ChatScreen.
///
/// This class manages the state of the ChatScreen, including the
/// current chatModelObj
class ChatController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<ChatModel> chatModelObj = ChatModel().obs;

  Stream<QuerySnapshot<Map<String, dynamic>>> chatList({required String field}) async* {
    var data = FirebaseFirestore.instance
        .collection('chat')
        .where(field, isEqualTo: Authentication.getCurrentUserId())
        .snapshots();
    yield* data;
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
