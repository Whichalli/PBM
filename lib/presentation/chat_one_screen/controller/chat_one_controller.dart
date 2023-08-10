import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';
import 'package:pbm_app/domain/firebase/firebase.dart';
import 'package:pbm_app/presentation/chat_one_screen/models/chat_one_model.dart';
import 'package:pbm_app/presentation/nurse_dashboard_page/pages/chat_screen/models/chat_item_model.dart';

/// A controller class for the ChatOneScreen.
///
/// This class manages the state of the ChatOneScreen, including the
/// current chatOneModelObj
class ChatOneController extends GetxController {
  var arguments = Get.arguments;
  var currentUser = Authentication.getCurrentUser();

  final messageController = TextEditingController();
  ChatItemModel? chatItemModel;

  Rx<bool> showOthers = Rx(true);

  ChatUser? user;

  ChatUser? user2;

  Rx<String> partnerName = Rx('');

  Map<String, dynamic> chatData = {};

  List<ChatMessage> messages = <ChatMessage>[];

  var chatId = Get.arguments['chatId'];
  @override
  void onInit() {
    user = ChatUser(id: currentUser!.uid);
    user2 = ChatUser(id: arguments['partnerId']);
    chatItemModel = arguments['prtnerDetails'];
    super.onInit();
  }

  isChatActive({required List<Map<String, dynamic>> bookingData}) {
    for (var element in bookingData) {}
  }

  onOpenMessage({required Map<String, dynamic> chat}) {
    messages.clear();
    chatData = chat;
    var msg = (chatData['messages']);
    for (Map<String, dynamic> element in msg) {
      Map<String, dynamic> user = element['user'];

      element.update('customProperties', (value) => <String, dynamic>{});
      user.update('customProperties', (value) => <String, dynamic>{});

      element.update('user', (value) => user);
      messages.insert(0, ChatMessage.fromJson(element));
    }
    chatData['unread'] = 0;
    chatData['isNewBooking'] = false;
    Database.update(userId: chatId, data: chatData, table: 'chat');
  }

  onSendeMessage({required ChatMessage message}) async {
    log('message = ${message.toJson()}');
    List allMessages = chatData['messages'];
    allMessages.add(message.toJson());
    chatData['lastMessage'] = message.text;
    chatData['lastSentTime'] = message.createdAt;
    chatData['isDocument'] = (message.medias != null);
    chatData['messages'] = allMessages;

    Database.update(userId: chatId, table: 'chat', data: chatData);
  }
}
