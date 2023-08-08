<<<<<<< HEAD
import 'controller/app_navigation_controller.dart';import 'package:flutter/material.dart';import 'package:pbm_care/core/app_export.dart';class AppNavigationScreen extends GetWidget<AppNavigationController> {const AppNavigationScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_app_navigation".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20), child: Text("msg_check_your_app_s".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular16))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.black90003))])), Expanded(child: SingleChildScrollView(child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [GestureDetector(onTap: () {onTapSignin();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_sign_in2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapPricing();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_pricing".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapServices();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_services".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapChooseAge();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_choose_age".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapChooseGenderAge();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_choose_gender_age".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapHome();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_home".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapHome1();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_home".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapHomeOnboardingContainer();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_home_onboarding".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapHomeEmpty();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_home_empty".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapViewRoutine();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_viewroutine".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapTaskTimerPage();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_tasktimerpage".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapRoutineFinishedPage();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_routinefinishedpage".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapLaunchscreen();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_launch_screen".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapLoginSlideTwo();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_login_slide_two".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapLoginSlideThree();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_login_slide_three".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapPackdetailContainer();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_pack_detail_container".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapPackdetailSwipeupunlock();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_pack_detail_swipe".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapPackdetailComposer();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_pack_detail_composer".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapNewRoutine();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_newroutine2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapUpcomingBookingFour();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_upcoming_booking".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapUpcomingBookingOne();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_upcoming_booking2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapUpcomingBookingThree();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_upcoming_booking3".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapMap();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_map".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapUpcomingBookingFive();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_upcoming_booking4".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapPastBookingDetailsOne();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_past_booking_details".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapPastBookingDetails();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_past_booking_details2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapNursesDetails();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_nurse_s_details".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapBookingStepOne();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_booking_step_one".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapBookingStepTwo();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_booking_step_two".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapUpcomingBookingTwo();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_upcoming_booking5".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapUpcomingBookingOne1();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_upcoming_booking2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapUpcomingBooking();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_upcoming_booking6".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapCallingNurse();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_calling_nurse".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapChatOne();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_chat_one".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapChat();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_chat".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapUpcomingBooking1();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_upcoming_booking6".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapUpcomingBookingTwo1();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_upcoming_booking5".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapUsagefollowupnegativeselection();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_usage_follow_up".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapFavouriteswithselection();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_favourites_with".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapSupportv10();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_support_v1_0".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapOnboardingTwo();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_onboarding_two".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapAlreadysignedUp();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_already_signed_up".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapAlreadysignedUpOne();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_already_signed_up2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapDashboard();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_dashboard2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))]))), GestureDetector(onTap: () {onTapAppointments();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_appointments".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40002))])))]))))])))); } 
/// Navigates to the signInScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the signInScreen.
onTapSignin() { Get.toNamed(AppRoutes.signInScreen, ); } 
/// Navigates to the pricingScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the pricingScreen.
onTapPricing() { Get.toNamed(AppRoutes.pricingScreen, ); } 
/// Navigates to the servicesScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the servicesScreen.
onTapServices() { Get.toNamed(AppRoutes.servicesScreen, ); } 
/// Navigates to the chooseAgeScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the chooseAgeScreen.
onTapChooseAge() { Get.toNamed(AppRoutes.chooseAgeScreen, ); } 
/// Navigates to the chooseGenderAgeScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the chooseGenderAgeScreen.
onTapChooseGenderAge() { Get.toNamed(AppRoutes.chooseGenderAgeScreen, ); } 
/// Navigates to the homeScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the homeScreen.
onTapHome() { Get.toNamed(AppRoutes.homeScreen, ); } 
/// Navigates to the home1Screen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the home1Screen.
onTapHome1() { Get.toNamed(AppRoutes.home1Screen, ); } 
/// Navigates to the homeOnboardingContainerScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the homeOnboardingContainerScreen.
onTapHomeOnboardingContainer() { Get.toNamed(AppRoutes.homeOnboardingContainerScreen, ); } 
/// Navigates to the homeEmptyScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the homeEmptyScreen.
onTapHomeEmpty() { Get.toNamed(AppRoutes.homeEmptyScreen, ); } 
/// Navigates to the viewroutineScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the viewroutineScreen.
onTapViewRoutine() { Get.toNamed(AppRoutes.viewroutineScreen, ); } 
/// Navigates to the tasktimerpageScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the tasktimerpageScreen.
onTapTaskTimerPage() { Get.toNamed(AppRoutes.tasktimerpageScreen, ); } 
/// Navigates to the routinefinishedpageScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the routinefinishedpageScreen.
onTapRoutineFinishedPage() { Get.toNamed(AppRoutes.routinefinishedpageScreen, ); } 
/// Navigates to the launchScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the launchScreen.
onTapLaunchscreen() { Get.toNamed(AppRoutes.launchScreen, ); } 
/// Navigates to the loginSlideTwoScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the loginSlideTwoScreen.
onTapLoginSlideTwo() { Get.toNamed(AppRoutes.loginSlideTwoScreen, ); } 
/// Navigates to the loginSlideThreeScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the loginSlideThreeScreen.
onTapLoginSlideThree() { Get.toNamed(AppRoutes.loginSlideThreeScreen, ); } 
/// Navigates to the packDetailContainerScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the packDetailContainerScreen.
onTapPackdetailContainer() { Get.toNamed(AppRoutes.packDetailContainerScreen, ); } 
/// Navigates to the packDetailSwipeUpUnlockScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the packDetailSwipeUpUnlockScreen.
onTapPackdetailSwipeupunlock() { Get.toNamed(AppRoutes.packDetailSwipeUpUnlockScreen, ); } 
/// Navigates to the packDetailComposerScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the packDetailComposerScreen.
onTapPackdetailComposer() { Get.toNamed(AppRoutes.packDetailComposerScreen, ); } 
/// Navigates to the newroutineScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the newroutineScreen.
onTapNewRoutine() { Get.toNamed(AppRoutes.newroutineScreen, ); } 
/// Navigates to the upcomingBookingFourScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the upcomingBookingFourScreen.
onTapUpcomingBookingFour() { Get.toNamed(AppRoutes.upcomingBookingFourScreen, ); } 
/// Navigates to the upcomingBookingOneScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the upcomingBookingOneScreen.
onTapUpcomingBookingOne() { Get.toNamed(AppRoutes.upcomingBookingOneScreen, ); } 
/// Navigates to the upcomingBookingThreeScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the upcomingBookingThreeScreen.
onTapUpcomingBookingThree() { Get.toNamed(AppRoutes.upcomingBookingThreeScreen, ); } 
/// Navigates to the mapScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the mapScreen.
onTapMap() { Get.toNamed(AppRoutes.mapScreen, ); } 
/// Navigates to the upcomingBookingFiveScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the upcomingBookingFiveScreen.
onTapUpcomingBookingFive() { Get.toNamed(AppRoutes.upcomingBookingFiveScreen, ); } 
/// Navigates to the pastBookingDetailsOneScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the pastBookingDetailsOneScreen.
onTapPastBookingDetailsOne() { Get.toNamed(AppRoutes.pastBookingDetailsOneScreen, ); } 
/// Navigates to the pastBookingDetailsScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the pastBookingDetailsScreen.
onTapPastBookingDetails() { Get.toNamed(AppRoutes.pastBookingDetailsScreen, ); } 
/// Navigates to the nurseSDetailsScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the nurseSDetailsScreen.
onTapNursesDetails() { Get.toNamed(AppRoutes.nurseSDetailsScreen, ); } 
/// Navigates to the bookingStepOneScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the bookingStepOneScreen.
onTapBookingStepOne() { Get.toNamed(AppRoutes.bookingStepOneScreen, ); } 
/// Navigates to the bookingStepTwoScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the bookingStepTwoScreen.
onTapBookingStepTwo() { Get.toNamed(AppRoutes.bookingStepTwoScreen, ); } 
/// Navigates to the upcomingBookingTwoScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the upcomingBookingTwoScreen.
onTapUpcomingBookingTwo() { Get.toNamed(AppRoutes.upcomingBookingTwoScreen, ); } 
/// Navigates to the upcomingBookingOne1Screen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the upcomingBookingOne1Screen.
onTapUpcomingBookingOne1() { Get.toNamed(AppRoutes.upcomingBookingOne1Screen, ); } 
/// Navigates to the upcomingBookingScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the upcomingBookingScreen.
onTapUpcomingBooking() { Get.toNamed(AppRoutes.upcomingBookingScreen, ); } 
/// Navigates to the callingNurseScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the callingNurseScreen.
onTapCallingNurse() { Get.toNamed(AppRoutes.callingNurseScreen, ); } 
/// Navigates to the chatOneScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the chatOneScreen.
onTapChatOne() { Get.toNamed(AppRoutes.chatOneScreen, ); } 
/// Navigates to the chatScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the chatScreen.
onTapChat() { Get.toNamed(AppRoutes.chatScreen, ); } 
/// Navigates to the upcomingBooking1Screen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the upcomingBooking1Screen.
onTapUpcomingBooking1() { Get.toNamed(AppRoutes.upcomingBooking1Screen, ); } 
/// Navigates to the upcomingBookingTwo1Screen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the upcomingBookingTwo1Screen.
onTapUpcomingBookingTwo1() { Get.toNamed(AppRoutes.upcomingBookingTwo1Screen, ); } 
/// Navigates to the usageFollowUpNegativeSelectionScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the usageFollowUpNegativeSelectionScreen.
onTapUsagefollowupnegativeselection() { Get.toNamed(AppRoutes.usageFollowUpNegativeSelectionScreen, ); } 
/// Navigates to the favouritesWithSelectionScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the favouritesWithSelectionScreen.
onTapFavouriteswithselection() { Get.toNamed(AppRoutes.favouritesWithSelectionScreen, ); } 
/// Navigates to the supportV10Screen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the supportV10Screen.
onTapSupportv10() { Get.toNamed(AppRoutes.supportV10Screen, ); } 
/// Navigates to the onboardingTwoScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the onboardingTwoScreen.
onTapOnboardingTwo() { Get.toNamed(AppRoutes.onboardingTwoScreen, ); } 
/// Navigates to the alreadySignedUpScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the alreadySignedUpScreen.
onTapAlreadysignedUp() { Get.toNamed(AppRoutes.alreadySignedUpScreen, ); } 
/// Navigates to the alreadySignedUpOneScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the alreadySignedUpOneScreen.
onTapAlreadysignedUpOne() { Get.toNamed(AppRoutes.alreadySignedUpOneScreen, ); } 
/// Navigates to the dashboardScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the dashboardScreen.
onTapDashboard() { Get.toNamed(AppRoutes.dashboardScreen, ); } 
/// Navigates to the appointmentsScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the appointmentsScreen.
onTapAppointments() { Get.toNamed(AppRoutes.appointmentsScreen, ); } 
 }
=======
import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
            width: double.maxFinite,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  decoration: AppDecoration.white,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(
                                    left: 20, top: 10, right: 20, bottom: 10),
                                child: Text("lbl_app_navigation".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtRobotoRegular20))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 20),
                                child: Text("msg_check_your_app_s".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtRobotoRegular16))),
                        Padding(
                            padding: getPadding(top: 5),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.black90003))
                      ])),
              Expanded(
                  child: SingleChildScrollView(
                      child: Container(
                          decoration: AppDecoration.white,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapSignin();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_sign_in2".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapPricing();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_pricing".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapServices();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_services".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapChooseAge();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_choose_age".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapChooseGenderAge();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_choose_gender_age"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapHome();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text("lbl_home".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapHome1();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text("lbl_home".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapHomeOnboardingContainer();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_home_onboarding"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapHomeEmpty();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_home_empty".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapViewRoutine();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_viewroutine".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapTaskTimerPage();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_tasktimerpage"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapRoutineFinishedPage();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_routinefinishedpage"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapLaunchscreen();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_launch_screen"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapLoginSlideTwo();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_login_slide_two"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapLoginSlideThree();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_login_slide_three"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapPackdetailContainer();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_pack_detail_container"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapPackdetailSwipeupunlock();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_pack_detail_swipe"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapPackdetailComposer();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_pack_detail_composer"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapNewRoutine();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_newroutine2".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapUpcomingBookingFour();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_upcoming_booking"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapUpcomingBookingOne();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_upcoming_booking2"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapUpcomingBookingThree();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_upcoming_booking3"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapMap();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text("lbl_map".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapUpcomingBookingFive();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_upcoming_booking4"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapPastBookingDetailsOne();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_past_booking_details"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapPastBookingDetails();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_past_booking_details2"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapNursesDetails();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_nurse_s_details"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapBookingStepOne();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_booking_step_one"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapBookingStepTwo();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_booking_step_two"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapUpcomingBookingTwo();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_upcoming_booking5"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapUpcomingBookingOne1();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_upcoming_booking2"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapUpcomingBooking();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_upcoming_booking6"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapCallingNurse();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_calling_nurse"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapChatOne();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_chat_one".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapChat();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text("lbl_chat".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapUpcomingBooking1();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_upcoming_booking6"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapUpcomingBookingTwo1();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_upcoming_booking5"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapUsagefollowupnegativeselection();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_usage_follow_up"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapFavouriteswithselection();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_favourites_with"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapSupportv10();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_support_v1_0".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapOnboardingTwo();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment: Alignment
                                                      .centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_onboarding_two"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapAlreadysignedUp();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_already_signed_up"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapAlreadysignedUpOne();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_already_signed_up2"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapDashboard();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_dashboard2".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapAppointments();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_appointments".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray40002))
                                            ])))
                              ]))))
            ])));
  }

  /// Navigates to the signInScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the signInScreen.
  onTapSignin() {
    Get.toNamed(
      AppRoutes.signInScreen,
    );
  }

  /// Navigates to the pricingScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the pricingScreen.
  onTapPricing() {
    Get.toNamed(
      AppRoutes.pricingScreen,
    );
  }

  /// Navigates to the servicesScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the servicesScreen.
  onTapServices() {
    Get.toNamed(
      AppRoutes.servicesScreen,
    );
  }

  /// Navigates to the chooseAgeScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the chooseAgeScreen.
  onTapChooseAge() {
    Get.toNamed(
      AppRoutes.chooseAgeScreen,
    );
  }

  /// Navigates to the chooseGenderAgeScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the chooseGenderAgeScreen.
  onTapChooseGenderAge() {
    Get.toNamed(
      AppRoutes.chooseGenderAgeScreen,
    );
  }

  /// Navigates to the homeScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the homeScreen.
  onTapHome() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the home1Screen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the home1Screen.
  onTapHome1() {
    Get.toNamed(
      AppRoutes.home1Screen,
    );
  }

  /// Navigates to the homeOnboardingContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the homeOnboardingContainerScreen.
  onTapHomeOnboardingContainer() {
    Get.toNamed(
      AppRoutes.homeOnboardingContainerScreen,
    );
  }

  /// Navigates to the homeEmptyScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the homeEmptyScreen.
  onTapHomeEmpty() {
    Get.toNamed(
      AppRoutes.homeEmptyScreen,
    );
  }

  /// Navigates to the viewroutineScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the viewroutineScreen.
  onTapViewRoutine() {
    Get.toNamed(
      AppRoutes.viewroutineScreen,
    );
  }

  /// Navigates to the tasktimerpageScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the tasktimerpageScreen.
  onTapTaskTimerPage() {
    Get.toNamed(
      AppRoutes.tasktimerpageScreen,
    );
  }

  /// Navigates to the routinefinishedpageScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the routinefinishedpageScreen.
  onTapRoutineFinishedPage() {
    Get.toNamed(
      AppRoutes.routinefinishedpageScreen,
    );
  }

  /// Navigates to the launchScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the launchScreen.
  onTapLaunchscreen() {
    Get.toNamed(
      AppRoutes.launchScreen,
    );
  }

  /// Navigates to the loginSlideTwoScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the loginSlideTwoScreen.
  onTapLoginSlideTwo() {
    Get.toNamed(
      AppRoutes.loginSlideTwoScreen,
    );
  }

  /// Navigates to the loginSlideThreeScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the loginSlideThreeScreen.
  onTapLoginSlideThree() {
    Get.toNamed(
      AppRoutes.loginSlideThreeScreen,
    );
  }

  /// Navigates to the packDetailContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the packDetailContainerScreen.
  onTapPackdetailContainer() {
    Get.toNamed(
      AppRoutes.packDetailContainerScreen,
    );
  }

  /// Navigates to the packDetailSwipeUpUnlockScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the packDetailSwipeUpUnlockScreen.
  onTapPackdetailSwipeupunlock() {
    Get.toNamed(
      AppRoutes.packDetailSwipeUpUnlockScreen,
    );
  }

  /// Navigates to the packDetailComposerScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the packDetailComposerScreen.
  onTapPackdetailComposer() {
    Get.toNamed(
      AppRoutes.packDetailComposerScreen,
    );
  }

  /// Navigates to the newroutineScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the newroutineScreen.
  onTapNewRoutine() {
    Get.toNamed(
      AppRoutes.newroutineScreen,
    );
  }

  /// Navigates to the upcomingBookingFourScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBookingFourScreen.
  onTapUpcomingBookingFour() {
    Get.toNamed(
      AppRoutes.upcomingBookingFourScreen,
    );
  }

  /// Navigates to the upcomingBookingOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBookingOneScreen.
  onTapUpcomingBookingOne() {
    Get.toNamed(
      AppRoutes.upcomingBookingOneScreen,
    );
  }

  /// Navigates to the upcomingBookingThreeScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBookingThreeScreen.
  onTapUpcomingBookingThree() {
    Get.toNamed(
      AppRoutes.upcomingBookingThreeScreen,
    );
  }

  /// Navigates to the mapScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the mapScreen.
  onTapMap() {
    Get.toNamed(
      AppRoutes.mapScreen,
    );
  }

  /// Navigates to the upcomingBookingFiveScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBookingFiveScreen.
  onTapUpcomingBookingFive() {
    Get.toNamed(
      AppRoutes.upcomingBookingFiveScreen,
    );
  }

  /// Navigates to the pastBookingDetailsOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the pastBookingDetailsOneScreen.
  onTapPastBookingDetailsOne() {
    Get.toNamed(
      AppRoutes.pastBookingDetailsOneScreen,
    );
  }

  /// Navigates to the pastBookingDetailsScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the pastBookingDetailsScreen.
  onTapPastBookingDetails() {
    Get.toNamed(
      AppRoutes.pastBookingDetailsScreen,
    );
  }

  /// Navigates to the nurseSDetailsScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the nurseSDetailsScreen.
  onTapNursesDetails() {
    Get.toNamed(
      AppRoutes.nurseSDetailsScreen,
    );
  }

  /// Navigates to the bookingStepOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the bookingStepOneScreen.
  onTapBookingStepOne() {
    Get.toNamed(
      AppRoutes.bookingStepOneScreen,
    );
  }

  /// Navigates to the bookingStepTwoScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the bookingStepTwoScreen.
  onTapBookingStepTwo() {
    Get.toNamed(
      AppRoutes.bookingStepTwoScreen,
    );
  }

  /// Navigates to the upcomingBookingTwoScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBookingTwoScreen.
  onTapUpcomingBookingTwo() {
    Get.toNamed(
      AppRoutes.upcomingBookingTwoScreen,
    );
  }

  /// Navigates to the upcomingBookingOne1Screen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBookingOne1Screen.
  onTapUpcomingBookingOne1() {
    Get.toNamed(
      AppRoutes.upcomingBookingOne1Screen,
    );
  }

  /// Navigates to the upcomingBookingScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBookingScreen.
  onTapUpcomingBooking() {
    Get.toNamed(
      AppRoutes.upcomingBookingScreen,
    );
  }

  /// Navigates to the callingNurseScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the callingNurseScreen.
  onTapCallingNurse() {
    Get.toNamed(
      AppRoutes.callingNurseScreen,
    );
  }

  /// Navigates to the chatOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the chatOneScreen.
  onTapChatOne() {
    Get.toNamed(
      AppRoutes.chatOneScreen,
    );
  }

  /// Navigates to the chatScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the chatScreen.
  onTapChat() {
    Get.toNamed(
      AppRoutes.chatScreen,
    );
  }

  /// Navigates to the upcomingBooking1Screen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBooking1Screen.
  onTapUpcomingBooking1() {
    Get.toNamed(
      AppRoutes.upcomingBooking1Screen,
    );
  }

  /// Navigates to the upcomingBookingTwo1Screen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBookingTwo1Screen.
  onTapUpcomingBookingTwo1() {
    Get.toNamed(
      AppRoutes.upcomingBookingTwo1Screen,
    );
  }

  /// Navigates to the usageFollowUpNegativeSelectionScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the usageFollowUpNegativeSelectionScreen.
  onTapUsagefollowupnegativeselection() {
    Get.toNamed(
      AppRoutes.usageFollowUpNegativeSelectionScreen,
    );
  }

  /// Navigates to the favouritesWithSelectionScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the favouritesWithSelectionScreen.
  onTapFavouriteswithselection() {
    Get.toNamed(
      AppRoutes.favouritesWithSelectionScreen,
    );
  }

  /// Navigates to the supportV10Screen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the supportV10Screen.
  onTapSupportv10() {
    Get.toNamed(
      AppRoutes.supportV10Screen,
    );
  }

  /// Navigates to the onboardingTwoScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the onboardingTwoScreen.
  onTapOnboardingTwo() {
    Get.toNamed(
      AppRoutes.onboardingTwoScreen,
    );
  }

  /// Navigates to the alreadySignedUpScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the alreadySignedUpScreen.
  onTapAlreadysignedUp() {
    Get.toNamed(
      AppRoutes.alreadySignedUpScreen,
    );
  }

  /// Navigates to the alreadySignedUpOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the alreadySignedUpOneScreen.
  onTapAlreadysignedUpOne() {
    Get.toNamed(
      AppRoutes.alreadySignedUpOneScreen,
    );
  }

  /// Navigates to the dashboardScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the dashboardScreen.
  onTapDashboard() {
    Get.toNamed(
      AppRoutes.dashboardScreen,
    );
  }

  /// Navigates to the appointmentsScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the appointmentsScreen.
  onTapAppointments() {
    Get.toNamed(
      AppRoutes.appointmentsScreen,
    );
  }
}
>>>>>>> dev
