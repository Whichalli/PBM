import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/widgets.dart';
import '../../domain/firebase/firebase.dart';
import 'controller/chat_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';

class ChatOneScreen extends GetWidget<ChatOneController> {
  const ChatOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        stream: FirebaseFirestore.instance
            .collection('chat')
            .doc(controller.chatId)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            log('....${snapshot.data!.data()}');
            // log('data cointing = ${snapshot.data} ${snapshot.data!['unread']}');
            if (snapshot.data!.data() == null) {
              return Scaffold(
                body: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Chat not available',
                        style: AppStyle.txtAlegreyaSansBold24.copyWith(
                          color: const Color.fromARGB(194, 0, 0, 0),
                          fontFamily: 'manrope',
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "You can't chat with a pediatrician that you've not booked or have no previous",
                          textAlign: TextAlign.center,
                          style: AppStyle.txtAlegreyaSansBold24.copyWith(
                              color: Colors.black54,
                              fontSize: 12,
                              fontFamily: 'manrope',
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      CustomButton(
                        text: 'Go Back',
                        height: 50,
                        margin: getMargin(all: 24),
                        onTap: () {
                          Get.back();
                        },
                      )
                    ],
                  ),
                ),
              );
            }
            controller.onOpenMessage(chat: snapshot.data!.data()!);

            return Scaffold(
                backgroundColor: ColorConstant.whiteA700,
                appBar: AppBar(
                  elevation: 1,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  // automaticallyImplyLeading: false,
                  leading: StreamBuilder<
                          DocumentSnapshot<Map<String, dynamic>>>(
                      stream: FirebaseFirestore.instance
                          .collection(
                              controller.chatItemModel!.accountType.value)
                          .doc('/${controller.user2!.id}')
                          .snapshots(),
                      builder: (context, profileSnapshot) {
                        // log('profileSnapshot = ${controller.chatItemModel!.accountType.value} ..... ${controller.user2!.id} ...... ${profileSnapshot.data!.data()}');
                        // controller.partnerName.value = profileSnapshot.hasData
                        //     ? profileSnapshot.data!.data()!['name']
                        //     : '';
                        log('user2 Id = ${controller.user2!.id}');
                        log('accountType = ${controller.chatItemModel!.accountType.value}');
                        // if (snapshot.hasData) {
                        //   log('profile = ${profileSnapshot.data!.data()}');
                        // }
                        return Row(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.arrow_back_ios_new_rounded,
                                color: Colors.black87,
                              ),
                              onPressed: () => Get.back(),
                            ),
                            SizedBox(
                              height: 40,
                              width: 40,
                              child: CustomImageView(
                                url: profileSnapshot.hasData
                                    ? profileSnapshot.data!.data()!['photoUrl']
                                    : '',
                                imagePath: ImageConstant.imageNotFound,
                                border: Border.all(color: Colors.black87),
                                radius: BorderRadius.circular(1000),
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              (profileSnapshot.hasData
                                      ? profileSnapshot.data!.data()!['name']
                                      : '')
                                  .toString()
                                  .capitalize!,
                              style: const TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            )
                          ],
                        );
                      }),
                  leadingWidth: size.width,
                  // titleSpacing: 30,
                ),
                body: DashChat(
                  currentUser: controller.user!,
                  readOnly: !controller.chatItemModel!.chatActive.value,
                  messageListOptions: const MessageListOptions(
                    scrollPhysics: BouncingScrollPhysics(),
                    showDateSeparator: true,
                  ),

                  // typingUsers: [controller.user2!],
                  messageOptions: MessageOptions(
                    showOtherUsersName: false,
                    showCurrentUserAvatar: false,
                    currentUserContainerColor: ColorConstant.pinkA100,
                    showTime: true,
                    onTapMedia: (media) {},
                  ),

                  onSend: (ChatMessage m) {
                    controller.onSendeMessage(message: m);
                    controller.messages.insert(0, m);
                    // controller.update();
                  },

                  inputOptions: InputOptions(
                      autocorrect: true,
                      textController: controller.messageController,
                      onTextChange: (value) {
                        controller.showOthers.value = value.isEmpty;
                      },
                      // alwaysShowSend: true,
                      inputToolbarStyle: BoxDecoration(
                          color: ColorConstant.pink50,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16))),
                      sendButtonBuilder: (send) => InkWell(
                          onTap: send,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.send_rounded,
                              color: ColorConstant.pinkA100,
                            ),
                          )),
                      trailing: [
                        Obx(() => controller.showOthers.value
                            ? InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(100),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Icon(
                                    Icons.camera_alt_rounded,
                                    color: ColorConstant.pinkA100,
                                  ),
                                ),
                              )
                            : const SizedBox()),
                        Obx(() => controller.showOthers.value
                            ? InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(100),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Transform.rotate(
                                    angle: 11,
                                    child: Icon(
                                      Icons.attachment,
                                      color: ColorConstant.pinkA100,
                                    ),
                                  ),
                                ),
                              )
                            : const SizedBox()),
                        Obx(() => controller.showOthers.value
                            ? InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(100),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Icon(
                                    Icons.mic,
                                    color: ColorConstant.pinkA100,
                                  ),
                                ),
                              )
                            : const SizedBox()),
                      ]),
                  messages: controller.messages,
                ));
          }
          return const SizedBox();
        });
  }

  /// Navigates to the chatScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the chatScreen.
  onTapRnhugosaavedra() {
    Get.toNamed(
      AppRoutes.chatScreen,
    );
  }
}
