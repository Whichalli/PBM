import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:pbm_app/core/app_export.dart';

/// This class is used in the [chat_item_widget] screen.

class ChatItemModel {
  final Rx<String> parentId = Rx("");
  final Rx<String> chatId = Rx("");
  final Rx<String> accountType = Rx("");
  final Rx<DateTime> time = Rx(DateTime.now());
  final Rx<int> unread = Rx(0);
  final Rx<String> lastMessage = Rx("");
  final Rx<String> field = Rx("");
  final Rx<String> employeeId = Rx("");
  final Rx<bool> chatActive = Rx(true);
  final Rx<String> senderId = Rx('');
  ChatItemModel({
    required DateTime time,
    required int unread,
    required String lastMessage,
    required String parentId,
    String? senderId,
    required bool chatActive,
    String? accountType,
    required String field,
    required String chatId,
    required String employeeId,
  }) {
    this.chatActive.value = chatActive;
    this.employeeId.value = employeeId;
    this.parentId.value = parentId;
    this.time.value = time;
    this.unread.value = unread;
    this.senderId.value = senderId ?? '';
    this.lastMessage.value = lastMessage;
    this.accountType.value = accountType ?? '';
    this.field.value = field;
    this.chatId.value = chatId;
  }

  static fromMap(Map<String, dynamic> data) => ChatItemModel(
      chatId: data['chatId'],
      senderId: data['senderId'],
      chatActive: data['chatActive'],
      accountType: data['accountType'],
      field: data['field'],
      lastMessage: data['lastMessage'],
      parentId: data['parentId'],
      employeeId: data['employeeId'],
      time: (data['lastSentTime'] as Timestamp).toDate(),
      unread: data['unread']);
}
