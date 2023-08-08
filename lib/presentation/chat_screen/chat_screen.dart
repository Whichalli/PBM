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
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // Scaffold(
        // appBar: CustomAppBar(
        //     height: getVerticalSize(44),
        //     leadingWidth: 29,
        //     leading: AppbarImage(
        //         height: getVerticalSize(15),
        //         width: getHorizontalSize(9),
        //         svgPath: ImageConstant.imgArrowleft,
        //         margin: getMargin(left: 20, top: 15, bottom: 14),
        //         onTap: () {
        //           onTapArrowleft3();
        //         }),
        //     centerTitle: true,
        //     title: AppbarSubtitle3(text: "lbl_chat".tr),
        //     actions: [
        //       AppbarImage(
        //           height: getSize(20),
        //           width: getSize(20),
        //           svgPath: ImageConstant.imgCarbonnotificationGray800,
        //           margin: getMargin(left: 25, top: 12, right: 25, bottom: 11))
        //     ]),
        // body:
        Container(
            width: double.maxFinite,
            padding: getPadding(top: 10, bottom: 10),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomSearchView(
                  focusNode: FocusNode(),
                  autofocus: false,
                  controller: controller.searchController,
                  hintText: "lbl_search".tr,
                  margin: getMargin(left: 20, right: 20),
                  variant: SearchViewVariant.FillPinkA10019,
                  fontStyle: SearchViewFontStyle.OpenSans14Gray600,
                  prefix: Container(
                      margin:
                          getMargin(left: 15, top: 11, right: 20, bottom: 11),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgSearchGray600)),
                  prefixConstraints:
                      BoxConstraints(maxHeight: getVerticalSize(42)),
                  suffix: Padding(
                      padding: EdgeInsets.only(right: getHorizontalSize(15)),
                      child: IconButton(
                          onPressed: () {
                            controller.searchController.clear();
                          },
                          icon:
                              Icon(Icons.clear, color: Colors.grey.shade600)))),
              // Align(
              //     alignment: Alignment.centerLeft,
              //     child: Padding(
              //         padding: getPadding(left: 20, top: 20),
              //         child: Text("lbl_unread_12".tr,
              //             overflow: TextOverflow.ellipsis,
              //             textAlign: TextAlign.left,
              //             style: AppStyle
              //                 .txtOpenSansRomanSemiBold14Gray800))),
              Expanded(
                  child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                        padding: getPadding(left: 20, top: 18, right: 21),
                        child: Obx(() => ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return SizedBox(height: getVerticalSize(18));
                            },
                            itemCount: controller
                                .chatModelObj.value.chatItemList.value.length,
                            itemBuilder: (context, index) {
                              ChatItemModel model = controller
                                  .chatModelObj.value.chatItemList.value[index];
                              return ChatItemWidget(model);
                            }))),
                  ],
                ),
              )),
              // CustomIconButton(
              //     height: 48,
              //     width: 48,
              //     margin: getMargin(top: 91, right: 15, bottom: 4),
              //     variant: IconButtonVariant.FillPinkA100,
              //     shape: IconButtonShape.CircleBorder24,
              //     alignment: Alignment.centerRight,
              //     child:
              //         CustomImageView(svgPath: ImageConstant.imgEditWhiteA700))
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
