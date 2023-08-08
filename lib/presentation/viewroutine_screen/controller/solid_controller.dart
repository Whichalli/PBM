import 'dart:developer';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/firebase.dart';

import '../../../widgets/widgets.dart';

class SolidController extends GetxController {
  String? date;
  String? time;
  String babyId = '';

  int? foodIndex;
  int? reactionIndex;

  TextEditingController solidTaskdescriptionController =
      TextEditingController();
  String emojiDisplayText = '';
  var selectedFile;
  bool loading = false;

  @override
  void onInit() {
    babyId = Get.arguments['babyId'];
    super.onInit();
  }

  @override
  dispose() {
    super.dispose();
    solidTaskdescriptionController.dispose();
  }

  List food = [
    {'label': ImageConstant.imgFruit, 'value': 'fruit', 'active': false},
    {
      'label': ImageConstant.imgVegetable,
      'value': 'vegetable',
      'active': false
    },
    {'label': ImageConstant.imgWater, 'value': 'water', 'active': false},
    {'label': ImageConstant.imgCupcakes, 'value': 'cupcakes', 'active': false},
    {
      'label': ImageConstant.imgBeverages,
      'value': 'beverages',
      'active': false
    },
  ];

  List reaction = [
    {
      'label': ImageConstant.imgEmojiLoveIt,
      'value': 1,
      'active': false,
      'text': 'Loved It'
    },
    {
      'label': ImageConstant.imgEmojiLikeIt,
      'value': 2,
      'active': false,
      'text': 'Liked It'
    },
    {
      'label': ImageConstant.imgEmojiNuertal,
      'value': 3,
      'active': false,
      'text': 'Nuetral'
    },
    {
      'label': ImageConstant.imgEmojiSad,
      'value': 4,
      'active': false,
      'text': 'Dislike It'
    },
    {
      'label': ImageConstant.imgEmojiWorst,
      'value': 5,
      'active': false,
      'text': 'Hate It / Alergic'
    },
  ];

  List selectedFood = [];
  List selectedReaction = [];

  onSelectReaction({required int index}) {
    reactionIndex = index;
    for (var e in reaction) {
      e['active'] = false;
    }
    reaction[index]['active'] = true;
    emojiDisplayText = reaction[index]['text'];
    update();
  }

  onSelectFood({required dynamic e}) {
    e['active'] = !e['active'];
    selectedFood.addIf(e['active'] == true, e);
    selectedFood.removeWhere((e) => e['active'] == false);
    update();

    log('selectedFood = $selectedFood');
  }

  onTapSelectImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );
    if (result != null) {
      selectedFile = File(result.files.single.path!);
      update();
    }
  }

  onTapFeedingDate() async {
    DateTime? t = await showDatePicker(
        context: Get.context!,
        initialDate: DateTime.now(),
        lastDate: DateTime.now(),
        firstDate: DateTime(DateTime.now().year - 5));
    if (t != null) {
      date = t.getDate();
      update();
    }
  }

  onTapFeedingTime() async {
    TimeOfDay? d = await showTimePicker(
        context: Get.context!, initialTime: TimeOfDay.now());
    if (d != null) time = '${d.getTime()}';
    update();
  }

  onSave() async {
    var downloadUrl;
    if (selectedFile != null) {
      downloadUrl =
          await Database.uploadFile(file: selectedFile, path: 'feeding');
    }
    if (date != null &&
        time != null &&
        reactionIndex != null &&
        selectedFood.isNotEmpty) {
      await Database.writeCollection(
          id: babyId,
          data: {
            'feedingDate': date,
            'feedingTime': time,
            'food': selectedFood,
            'reaction': reaction[reactionIndex!],
            'photoUrl': downloadUrl,
            'note': solidTaskdescriptionController.text
          },
          parentTable: 'feeding',
          childTable: 'solidLogs');

      snackbar(
          context: Get.context,
          message: 'Data Saved',
          icon: Icon(
            Icons.check_circle_outline_outlined,
            color: ColorConstant.pink400,
          ),
          color: ColorConstant.pinkA100);
      Get.back();
    }
  }
}
