import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/custom_button.dart';

import 'controller/controller.dart';

class AddNoteScreen extends GetWidget<NoteTakingScreenController> {
  const AddNoteScreen({super.key, this.noteDetails});
  final QueryDocumentSnapshot<Map<String, dynamic>>? noteDetails;

  @override
  Widget build(BuildContext context) {
    log('note details = ${this.noteDetails}');
    var date = DateTime.now();
    if (noteDetails != null) {
      controller.titleController.text = noteDetails!['title'];
      controller.bodyController.text = noteDetails!['body'];
      controller.dateController.text = noteDetails!['createdAt'];
      // '${date.toActualDate()}, ${TimeOfDay.fromDateTime(date).getTime()}';
    } else {
      controller.dateController.text =
          '${date.toActualDate()}, ${TimeOfDay.fromDateTime(date).getTime()}';
    }

    // TODO: implement build
    return WillPopScope(
      onWillPop: () async {
        controller.titleController.clear();
        controller.bodyController.clear();

        return Future.value(true);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 1,
          title: const Text('Note Taking'),
          titleTextStyle: const TextStyle(color: Colors.black87, fontSize: 20),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                controller.titleController.clear();
                controller.bodyController.clear();
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.black,
              )),
        ),
        body: Container(
          padding: getPadding(left: 16, right: 16, bottom: 16, top: 8),
          child: Column(
            children: [
              TextField(
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                maxLines: 1,
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'nunito'),
                controller: controller.titleController,
                decoration: InputDecoration(
                    hintText: 'Title',
                    border: InputBorder.none,
                    contentPadding: getPadding(all: 0),
                    focusedBorder: InputBorder.none),
              ),
              const Divider(
                // height: 1,
                thickness: 1,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  controller.dateController.text,
                  style: const TextStyle(
                    color: Color.fromARGB(209, 139, 139, 139),
                    fontFamily: 'nunito',
                  ),
                ),
              ),
              const Divider(
                // height: 4,
                thickness: 1,
              ),
              Expanded(
                child: TextField(
                  onTapOutside: (event) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  maxLines: 400,
                  style: const TextStyle(
                      // fontSize: 20,
                      // fontWeight: FontWeight.bold,
                      fontFamily: 'nunito'),
                  onSubmitted: (value) {
                    log('value = $value');
                  },
                  controller: controller.bodyController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Note Content',
                      contentPadding: getPadding(all: 0),
                      focusedBorder: InputBorder.none),
                ),
              ),
              Obx(() => CustomButton(
                  // margin: getMargin(all: 4),
                  onTap: () async {
                    controller.loading.value = true;
                    await controller.onTapDone(
                        noteId: noteDetails != null ? noteDetails!.id : null);
                    controller.loading.value = false;
                  },
                  height: 50,
                  text: controller.loading.value ? null : 'Save',
                  icon: controller.loading.value
                      ? const SizedBox(
                          width: 18,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        )
                      : null))
            ],
          ),
        ),
      ),
    );
  }
}
