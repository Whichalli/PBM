import '../chat_screen/widgets/chat_item_widget.dart';
import 'controller/chat_controller.dart';
import 'models/chat_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/app_bar/appbar_image.dart';
import 'package:pbm_app/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:pbm_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pbm_app/widgets/custom_bottom_bar.dart';
import 'package:pbm_app/widgets/custom_icon_button.dart';
import 'package:pbm_app/widgets/custom_search_view.dart';

class ChatScreen extends GetWidget<ChatController> {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.whiteA700,
      appBar: CustomAppBar(
          height: getVerticalSize(44),
          leadingWidth: 29,
          leading: AppbarImage(
              height: getVerticalSize(15),
              width: getHorizontalSize(9),
              svgPath: ImageConstant.imgArrowleft,
              margin: getMargin(left: 20, top: 15, bottom: 14),
              onTap: () {
                onTapArrowleft3();
              }),
          centerTitle: true,
          title: AppbarSubtitle3(text: "lbl_chat".tr),
          actions: [
            AppbarImage(
                height: getSize(20),
                width: getSize(20),
                svgPath: ImageConstant.imgCarbonnotificationGray800,
                margin: getMargin(left: 25, top: 12, right: 25, bottom: 11))
          ]),
      body: Container(
          width: double.maxFinite,
          padding: getPadding(top: 10, bottom: 10),
          child: SingleChildScrollView(
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
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: getPadding(left: 20, top: 20),
                      child: Text("lbl_unread_12".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOpenSansRomanSemiBold14Gray800))),
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
              Padding(
                  padding: getPadding(top: 28),
                  child: Divider(
                      height: getVerticalSize(1),
                      thickness: getVerticalSize(1),
                      color: ColorConstant.pinkA10019)),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: getPadding(left: 20, top: 18),
                      child: Text("lbl_all_chats".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOpenSansRomanSemiBold14Gray800))),
              GestureDetector(
                  onTap: () {
                    onTapRowavatar();
                  },
                  child: Padding(
                      padding: getPadding(left: 20, top: 19, right: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: getSize(44),
                                width: getSize(44),
                                margin: getMargin(bottom: 1),
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgAvatar,
                                          height: getSize(44),
                                          width: getSize(44),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(22)),
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                              height: getSize(9),
                                              width: getSize(9),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.greenA700,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(4)),
                                                  border: Border.all(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      width:
                                                          getHorizontalSize(1),
                                                      strokeAlign:
                                                          strokeAlignCenter))))
                                    ])),
                            Padding(
                                padding: getPadding(left: 21),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_thanawan_chadee".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtOpenSans16Gray800),
                                      Padding(
                                          padding: getPadding(top: 5),
                                          child: Text(
                                              "msg_this_was_how_i_helped".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtOpenSans12))
                                    ])),
                            Padding(
                                padding: getPadding(left: 37, bottom: 28),
                                child: Text("lbl_7_40".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtOpenSansRomanSemiBold12Gray600))
                          ]))),
              Padding(
                  padding: getPadding(left: 20, top: 18, right: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: getSize(44),
                            width: getSize(44),
                            margin: getMargin(bottom: 1),
                            child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgAvatar,
                                      height: getSize(44),
                                      width: getSize(44),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(22)),
                                      alignment: Alignment.center),
                                  Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                          height: getSize(9),
                                          width: getSize(9),
                                          decoration: BoxDecoration(
                                              color: ColorConstant.greenA700,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getHorizontalSize(4)),
                                              border: Border.all(
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  width: getHorizontalSize(1),
                                                  strokeAlign:
                                                      strokeAlignCenter))))
                                ])),
                        Padding(
                            padding: getPadding(left: 21),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("lbl_thanawan_chadee".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtOpenSans16Gray800),
                                  Padding(
                                      padding: getPadding(top: 5),
                                      child: Text(
                                          "msg_this_was_how_i_helped".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtOpenSans12))
                                ])),
                        Padding(
                            padding: getPadding(left: 37, bottom: 28),
                            child: Text("lbl_7_40".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtOpenSansRomanSemiBold12Gray600))
                      ])),
              CustomIconButton(
                  height: 48,
                  width: 48,
                  margin: getMargin(top: 91, right: 15, bottom: 4),
                  variant: IconButtonVariant.FillPinkA100,
                  shape: IconButtonShape.CircleBorder24,
                  alignment: Alignment.centerRight,
                  child:
                      CustomImageView(svgPath: ImageConstant.imgEditWhiteA700))
            ]),
          )),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Volume:
        return "/";
      case BottomBarEnum.Sort:
        return "/";
      case BottomBarEnum.Vuesaxlinearaddpinka100:
        return "/";
      case BottomBarEnum.Car:
        return "/";
      case BottomBarEnum.User:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      default:
        return DefaultWidget();
    }
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
