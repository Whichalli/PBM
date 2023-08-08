import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';
import 'package:pbm_app/presentation/select_baby/controller/select_baby_controller.dart';
import 'package:pbm_app/widgets/custom_floating_button.dart';
import 'package:pbm_app/widgets/custom_icon_button.dart';
import 'package:pbm_app/widgets/custom_search_view.dart';

class SelectBabyScreen extends GetWidget<SelectBabyController> {
  const SelectBabyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorConstant.gray100,
        automaticallyImplyLeading: false,
        title: Text(
          "Select Baby/Child".tr,
          style: TextStyle(color: Colors.black),
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
      body: SizedBox(
        width: getHorizontalSize(393),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
              stream: FirebaseFirestore.instance
                  .collection('baby')
                  .where('parentId',
                      isEqualTo: Authentication.getCurrentUserId())
                  .snapshots(),
              builder: (context, snapshot) => (!snapshot.hasData)
                  ? Center(
                      child: Text(
                        'Add a baby',
                        style: TextStyle(fontSize: 16),
                      ),
                    )
                  : ListView.separated(
                      // padding: getPadding(top: ),
                      scrollDirection: Axis.vertical,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: getVerticalSize(8));
                      },
                      itemCount: snapshot.data!.size,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.homeEmptyScreen, arguments: {
                              'babyId': snapshot.data!.docs[index].id
                            });
                          },
                          child: Container(
                            height: 60,
                            padding: getPadding(all: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                CustomImageView(
                                  width: 40,
                                  svgPath: ImageConstant.imgMusic,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  '${snapshot.data!.docs[index]['name']}',
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                          ),
                        );
                      })),
        ),
      ),
      floatingActionButton: CustomFloatingButton(
          height: 64,
          width: 64,
          onTap: () {
            controller.toAddBabyPage();
          },
          child: CustomImageView(
              svgPath: ImageConstant.imgPlus,
              height: getVerticalSize(32.0),
              width: getHorizontalSize(32.0))),
    );
  }
}
