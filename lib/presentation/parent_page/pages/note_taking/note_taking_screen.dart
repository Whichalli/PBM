import 'dart:developer';
import 'dart:math' as Math;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';
import 'controller/controller.dart';
import 'note_taking_details.dart';

class NoteTakingScreen extends GetWidget<NoteTakingScreenController> {
  const NoteTakingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: FirebaseFirestore.instance
              .collection('note')
              .where('userId', isEqualTo: Authentication.getCurrentUserId())
              .snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return LinearProgressIndicator(
                minHeight: 1,
                color: ColorConstant.pinkA100,
              );
            }
            List<QueryDocumentSnapshot<Map<String, dynamic>>> resp =
                snapshot.data!.docs;
            Rx<List<QueryDocumentSnapshot<Map<String, dynamic>>>> data =
                Rx(resp);

            return Column(
              children: [
                Padding(
                  padding: getPadding(top: 8, bottom: 4),
                  child: Container(
                      margin: getMargin(right: 16, left: 16, top: 0, bottom: 0),
                      // width: 200,
                      height: 35,
                      padding: getPadding(left: 8, right: 8),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(100)),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.search_rounded,
                            size: 20,
                            color: Colors.black26,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: controller.searchController,
                              onChanged: (value) {
                                if (controller
                                    .searchController.text.isNotEmpty) {
                                  data.value = resp
                                      .where((element) =>
                                          '${element.data()['title']}'
                                              .toLowerCase()
                                              .contains(controller
                                                  .searchController.text
                                                  .toLowerCase()))
                                      .toList();
                                } else {
                                  data.value = resp;
                                }
                              },
                              onTapOutside: (event) {
                                FocusManager.instance.primaryFocus?.unfocus();
                              },
                              cursorColor: Colors.black12,
                              decoration: const InputDecoration(
                                  hintText: 'Note Title',
                                  // contentPadding: getPadding(all: 0),
                                  focusColor: Colors.transparent,
                                  fillColor: Colors.transparent,
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none),
                            ),
                          ),
                        ],
                      )),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: getPadding(left: 16, right: 16, top: 8),
                    physics: const BouncingScrollPhysics(),
                    child: Obx(() => Wrap(
                          spacing: 12,
                          runSpacing: 12,
                          runAlignment: WrapAlignment.start,
                          children: List.generate(data.value.length, (index) {
                            // var date =
                            //     (data.value[index]['createdAt'] as Timestamp)
                            //         .toDate();
                            return GestureDetector(
                              onTap: () {
                                Get.to(() => AddNoteScreen(
                                      noteDetails: data.value[index],
                                    ));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        left: BorderSide(
                                            color: ColorConstant.fromHex(
                                                '${Math.Random.secure().nextInt(9999999) + 0000000}'),
                                            width: 2))),
                                child: Container(
                                  padding: getPadding(all: 12),
                                  height: 110,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: const Color.fromARGB(
                                          37, 180, 180, 180)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              // '${date.toActualDate()}, ${TimeOfDay.fromDateTime(date).getTime()} ',
                                              '${data.value[index]['createdAt']}',
                                              style: AppStyle
                                                  .txtAlegreyaSansBold14
                                                  .copyWith(
                                                      fontSize: 12,
                                                      color: Colors.black54,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontFamily: 'rubik'),
                                            ),
                                          ),
                                          InkWell(
                                              borderRadius:
                                                  BorderRadius.circular(1000),
                                              onTap: () {
                                                controller.onDeleteNote(
                                                    noteId:
                                                        data.value[index].id);
                                              },
                                              // splashRadius: 10,
                                              // iconSize: 20,
                                              child: const Icon(
                                                Icons.close_rounded,
                                                color: Colors.black54,
                                              ))
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        data.value[index]['title'],
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: AppStyle.txtAlegreyaSansBold14
                                            .copyWith(
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                                fontFamily: 'rubik'),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        data.value[index]['body'],
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: AppStyle.txtAlegreyaSansBold14
                                            .copyWith(
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black54,
                                                fontFamily: 'rubik'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                        )),
                  ),
                ),
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add New Note',
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        onPressed: () {
          Get.to(() => const AddNoteScreen());
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: BorderSide(color: ColorConstant.pinkA100, width: 2)),
        child: Icon(
          Icons.note_alt_outlined,
          color: ColorConstant.pinkA100,
        ),
      ),
    );
  }
}
