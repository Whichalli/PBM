import 'dart:developer';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';
import 'package:pbm_app/domain/firebase/firebase.dart';
import 'package:pbm_app/presentation/upcoming_booking1_screen/models/upcoming_booking1_model.dart';
import 'package:flutter/material.dart';

import '../models/model.dart';

/// A controller class for the BookedNurseScreen.
///
/// This class manages the state of the BookedNurseScreen, including the
/// current BookedNurseModelObj
class NoteTakingScreenController extends GetxController {
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController searchController = TextEditingController();
  RxBool upcoming = true.obs;

  Rx<bool> loading = Rx(false);

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    titleController.dispose();
    bodyController.dispose();
    searchController.dispose();
  }

  onDeleteNote({required String noteId}) async {
    await showDialog(
        context: Get.context!,
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              title: const Text('Are you sure ?'),
              titleTextStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18),
              content: Container(
                width: 300,
                height: 90,
                color: Colors.white,
                child: Column(
                  children: [
                    const Text(
                      'This note will no longer exist if you confirm this action',
                      style: TextStyle(color: Colors.black54),
                    ),
                    Expanded(
                        child: Row(
                      children: [
                        Flexible(
                          child: TextButton(
                            onPressed: () async {
                              await Database.delete(
                                  userId: noteId, table: 'note');
                              Get.back();
                            },
                            style: TextButton.styleFrom(
                                fixedSize: const Size(80, 30),
                                padding: getPadding(left: 16, right: 16),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    side: const BorderSide(
                                        color: Colors.green, width: 1.5))),
                            child: const Text(
                              'Yes',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Flexible(
                          child: TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            style: TextButton.styleFrom(
                                fixedSize: const Size(80, 30),
                                // padding: getPadding(left: 16, right: 16),
                                backgroundColor: Colors.red,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    side: const BorderSide(
                                        color: Colors.red, width: 1.5))),
                            child: const Text(
                              'No',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ))
                  ],
                ),
              ),
            ));
  }

  onTapDone({String? noteId}) async {
    if (titleController.text.isNotEmpty && bodyController.text.isNotEmpty) {
      if (noteId == null) {
        await Database.write(
            userId:
                '${Random.secure().nextInt(88888) + 11111}-${Random.secure().nextInt(88888) + 11111}',
            data: {
              'userId': Authentication.getCurrentUserId(),
              'title': titleController.text,
              'body': bodyController.text,
              'createdAt': dateController.text
            },
            table: 'note');
      } else {
        var resp = (await FirebaseFirestore.instance
                .collection('note')
                .doc(noteId)
                .get())
            .data();
        var data = resp;
        data!['title'] = titleController.text;
        data!['body'] = bodyController.text;
        await Database.update(userId: noteId, data: data, table: 'note');
      }
      Get.back();
      return;
    }
    Fluttertoast.showToast(msg: 'Note title & content can note be empty');
  }
}
