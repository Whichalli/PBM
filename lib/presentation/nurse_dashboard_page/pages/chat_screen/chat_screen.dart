import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';

import '../chat_screen/widgets/chat_item_widget.dart';
import 'controller/chat_controller.dart';
import 'models/chat_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/app_bar/appbar_image.dart';
import 'package:pbm_app/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:pbm_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pbm_app/widgets/custom_search_view.dart';

class ChatScreen extends GetWidget<ChatController> {
  final String field;
  const ChatScreen({required this.field, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: getPadding(top: 10, bottom: 10),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomSearchView(
              focusNode: FocusNode(),
              autofocus: false,
              controller: controller.searchController,
              hintText: "lbl_search".tr,
              margin: getMargin(left: 20, right: 20),
              variant: SearchViewVariant.FillPinkA10019,
              fontStyle: SearchViewFontStyle.OpenSans14Gray600,
              prefix: Container(
                  margin: getMargin(left: 15, top: 11, right: 20, bottom: 11),
                  child:
                      CustomImageView(svgPath: ImageConstant.imgSearchGray600)),
              prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(42)),
              suffix: Padding(
                  padding: EdgeInsets.only(right: getHorizontalSize(15)),
                  child: IconButton(
                      onPressed: () {
                        controller.searchController.clear();
                      },
                      icon: Icon(Icons.clear, color: Colors.grey.shade600)))),
          Expanded(
              child: SingleChildScrollView(
            padding: getPadding(left: 20, top: 8, right: 21),
            physics: const BouncingScrollPhysics(),
            child: (StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                stream: controller.chatList(field: field),
                builder: (context, snapshot) {
                  List<QueryDocumentSnapshot<Map<String, dynamic>>> data;
                  if (!snapshot.hasData) {
                    return LinearProgressIndicator(
                      color: ColorConstant.pinkA100,
                      minHeight: 3,
                    );
                  }
                  data = snapshot.data!.docs;
                  return Column(
                    children: [
                      if (data.isEmpty) const Text('No recent chat'),
                      ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(18));
                          },
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            // log('parents = ${data[index].data()}');
                            // data[index].data()['chatId'] = data[index].id;
                            var user = data[index].data();
                            user.putIfAbsent('chatId', () => data[index].id);
                            user.putIfAbsent('field', () => field);
                            user.putIfAbsent('chatActive', () => true);
                            

                            ChatItemModel model = ChatItemModel.fromMap(user);
                            model.senderId.value =
                                data[index].data()['senderId'];
                            model.chatId.value = data[index].id;

                            model.accountType.value =
                                field == 'employeeId' ? 'parent' : 'employee';
                            String partnerId = data[index].data()[
                                field == 'employeeId'
                                    ? 'parentId'
                                    : 'employeeId'];
                            // log("[field == 'employeeId'? 'parentId': 'employeeId' = ${[
                            //   field == 'employeeId' ? 'parentId' : 'employeeId'
                            // ]}");
                            // log('receiverId = $partnerId data[index] = ${data[index].data()}');
                            return InkWell(
                                onTap: () {
                                  Get.toNamed(AppRoutes.chatOneScreen,
                                      arguments: {
                                        'partnerId': partnerId,
                                        'chatId': data[index].id,
                                        'account': model.accountType.value,
                                        'partnerDetails': model,
                                      });
                                },
                                child: ChatItemWidget(model));
                          }),
                    ],
                  );
                })),
          )),
        ])
        // ),
        );
  }

  /// Navigates to the chatOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the chatOneScreen.
  onTapRowavatar() {
    Get.toNamed(
      AppRoutes.chatOneScreen,
    );
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleft3() {
    Get.back();
  }
}
