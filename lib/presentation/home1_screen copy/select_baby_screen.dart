import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';
import 'package:pbm_app/presentation/select_baby/controller/select_baby_controller.dart';
import 'package:pbm_app/widgets/custom_icon_button.dart';
import 'package:pbm_app/widgets/custom_search_view.dart';

class SelectBabyScreen extends GetWidget<SelectBabyController> {
  const SelectBabyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: getHorizontalSize(393),
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
                      padding: getPadding(top: 19, right: 26),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: getVerticalSize(8));
                      },
                      itemCount: snapshot.data!.size,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgAvatar72x72,
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
        ));
  }
}
