import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/presentation/add_baby/controller/add_baby_controller.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_drop_down.dart';
import 'package:pbm_app/widgets/custom_text_form_field.dart';

class AddBabyScreen extends GetWidget<AddBabyController> {
  AddBabyScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorConstant.gray100,
          automaticallyImplyLeading: false,
          title: Text(
            "Add Baby/Child".tr,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.black,
              )),
        ),
        backgroundColor: ColorConstant.gray200,
        resizeToAvoidBottomInset: false,
        body: Container(
            width: getHorizontalSize(411),
            padding: getPadding(left: 33, top: 32, right: 33, bottom: 32),
            child: Form(
              key: _formKey,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                    margin: getMargin(top: 12),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text("Name".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtAlegreyaSansBold14)),
                      Container(
                        margin: getMargin(top: 8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: ColorConstant.pink400),
                            borderRadius: BorderRadius.circular(19)),
                        child: CustomTextFormField(
                            validator: (value) {
                              return controller.nameController.text.isEmpty
                                  ? 'This field is required'
                                  : null;
                            },
                            margin: getMargin(all: 0),
                            focusNode: FocusNode(),
                            controller: controller.nameController,
                            hintText: "Jamson",
                            variant: TextFormFieldVariant.None,
                            shape: TextFormFieldShape.RoundedBorder21,
                            padding: TextFormFieldPadding.PaddingAll19,
                            fontStyle:
                                TextFormFieldFontStyle.OpenSansRomanRegular15,
                            textInputAction: TextInputAction.done,
                            alignment: Alignment.center),
                      )
                    ])),
                Padding(
                    padding: getPadding(
                      top: 12,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: getPadding(top: 7, bottom: 5),
                              child: Text("lbl_gender".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtAlegreyaSansBold14)),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(color: ColorConstant.pink400),
                                borderRadius: BorderRadius.circular(19)),
                            child: CustomDropDown(
                                validator: (value) {
                                  return controller
                                          .genderController.text.isEmpty
                                      ? 'This field is required'
                                      : null;
                                },
                                width: getHorizontalSize(160),
                                focusNode: FocusNode(),
                                autofocus: true,
                                icon: Container(
                                    margin: getMargin(left: 29, right: 32),
                                    child: CustomImageView(
                                        width: 15,
                                        svgPath: ImageConstant.imgArrowdown)),
                                hintText: "Select".tr,
                                variant: DropDownVariant.None,
                                shape: DropDownShape.RoundedBorder16,
                                padding: DropDownPadding.PaddingT10,
                                fontStyle:
                                    DropDownFontStyle.OpenSansRomanRegular15,
                                items: controller.addBabyModelObj.value
                                    .dropdownItemList.value,
                                onChanged: (value) {
                                  controller.onSelected(value);
                                }),
                          )
                        ])),
                Container(
                    margin: getMargin(top: 12),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text("Birthday".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtAlegreyaSansBold14)),
                      Container(
                        margin: getMargin(top: 4),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: ColorConstant.pink400),
                            borderRadius: BorderRadius.circular(19)),
                        child: CustomTextFormField(
                            onTap: () async {
                              controller.pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate:
                                      controller.pickedDate ?? DateTime.now(),
                                  firstDate: DateTime(DateTime.now().year - 10),
                                  lastDate: DateTime.now());
                              log('pickedDate = ${controller.pickedDate}');
                              controller.dobController.text = controller
                                  .pickedDate
                                  .toString()
                                  .split(' ')
                                  .first;
                            },
                            margin: getMargin(all: 0),
                            focusNode: FocusNode(),
                            controller: controller.dobController,
                            validator: (value) {
                              log('value = $value');
                              return controller.dobController.text.isEmpty
                                  ? 'This field is required'
                                  : null;
                            },
                            readOnly: true,
                            hintText:
                                "${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}",
                            variant: TextFormFieldVariant.None,
                            shape: TextFormFieldShape.RoundedBorder21,
                            padding: TextFormFieldPadding.PaddingAll19,
                            fontStyle:
                                TextFormFieldFontStyle.OpenSansRomanRegular15,
                            textInputAction: TextInputAction.done,
                            alignment: Alignment.center),
                      )
                    ])),
                Container(
                    margin: getMargin(top: 12),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text("Add Note".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtAlegreyaSansBold14)),
                      Container(
                        margin: getMargin(top: 4),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: ColorConstant.pink400),
                            borderRadius: BorderRadius.circular(19)),
                        child: CustomTextFormField(
                            margin: getMargin(all: 0),
                            focusNode: FocusNode(),
                            controller: controller.noteController,
                            hintText: "Optional",
                            maxLines: 5,
                            variant: TextFormFieldVariant.OutlineGray10001,
                            shape: TextFormFieldShape.RoundedBorder21,
                            padding: TextFormFieldPadding.PaddingAll9,
                            fontStyle:
                                TextFormFieldFontStyle.OpenSansRomanRegular15,
                            textInputAction: TextInputAction.done,
                            alignment: Alignment.center),
                      )
                    ])),
              ]),
            )),
        bottomNavigationBar: Obx(() => CustomButton(
            height: getVerticalSize(50),
            margin: getMargin(all: 16),
            text: !controller.loading.value ? "Add Baby/Child".tr : null,
            icon: !controller.loading.value
                ? null
                : SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      color: ColorConstant.whiteA700,
                      strokeWidth: 2,
                    ),
                  ),
            onTap: () async {
              if (_formKey.currentState!.validate()) {
                controller.loading.value = true;
                await controller.save(context);
                controller.loading.value = false;
              }
            },
            variant: ButtonVariant.OutlineBlack90019,
            shape: ButtonShape.CircleBorder32,
            padding: ButtonPadding.PaddingAll16,
            fontStyle: ButtonFontStyle.InterMedium18WhiteA700)));
  }
}
