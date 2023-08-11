import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';

import '../controller/chat_controller.dart';
import '../models/chat_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/custom_button.dart';

// ignore: must_be_immutable
class ChatItemWidget extends StatelessWidget {
  ChatItemWidget(
    this.chatItemModel, {
    Key? key,
  }) : super(
          key: key,
        );

  ChatItemModel chatItemModel;

  var controller = Get.find<ChatController>();

  @override
  Widget build(BuildContext context) {
    String table =
        chatItemModel.field.value == 'employeeId' ? 'parent' : 'employee';
    String user = chatItemModel.field.value == 'employeeId'
        ? chatItemModel.parentId.value
        : chatItemModel.employeeId.value;
    return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        stream: FirebaseFirestore.instance
            .collection(table)
            .doc('/$user')
            .snapshots(),
        builder: (context, snapshot) {
          bool hasData = snapshot.hasData;
          return Container(
            padding: getPadding(bottom: 4),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Color.fromARGB(31, 194, 192, 192), width: 1))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: getSize(
                    44,
                  ),
                  width: getSize(
                    44,
                  ),
                  margin: getMargin(
                    top: 2,
                    bottom: 1,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        url:
                            hasData ? snapshot.data?.data()!['photoUrl'] : null,
                        imagePath: ImageConstant.imageNotFound,
                        height: getSize(
                          44,
                        ),
                        width: getSize(
                          44,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            200,
                          ),
                        ),
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: getSize(
                            9,
                          ),
                          width: getSize(
                            9,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.greenA700,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                4,
                              ),
                            ),
                            border: Border.all(
                              color: ColorConstant.whiteA700,
                              width: getHorizontalSize(
                                1,
                              ),
                              strokeAlign: strokeAlignCenter,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: getPadding(
                      left: 16,
                      top: 3,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '${hasData ? snapshot.data?.data()!['name'] : '...'}'
                              .capitalize!,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOpenSansRomanSemiBold16Gray800,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 8,
                          ),
                          child: Text(
                            chatItemModel.lastMessage.value,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtOpenSans12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(left: 8, top: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        chatItemModel.time.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOpenSansRomanSemiBold12Gray600,
                      ),
                      if (chatItemModel.unread.value > 0 &&
                          chatItemModel.senderId.value !=
                              Authentication.getCurrentUserId()) ...[
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1000),
                              color: ColorConstant.pinkA100),
                          child: Text(
                            '${chatItemModel.unread.value}',
                            style: AppStyle.txtInterRegular16.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ]
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
