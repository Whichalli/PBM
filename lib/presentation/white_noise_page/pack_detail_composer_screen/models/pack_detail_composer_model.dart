// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pbm_app/core/app_export.dart';

/// This class defines the variables used in the [pack_detail_composer_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PackDetailComposerModel {
  static List titles = ['Rain', 'Forest', 'Ocean'];

  List<Map<String, dynamic>> headings = [
    {
      'headings': 'Child',
      'subHeading': 'msg_quickly_stabilize',
      'body': <Map<String, dynamic>>[
        {
          'title': 'Audio Stories',
          'icon': ImageConstant.imgIcons8girl,
          'color': ColorConstant.blueGray90002,
          'table': 'audio_stories'
        },
        {
          'title': 'Lullaby',
          'icon': ImageConstant.imgIcons8lullaby,
          'color': ColorConstant.pinkA100,
          'table': 'lullaby'
        },
      ]
    },
    {
      'headings': 'Nature',
      'subHeading': 'msg_it_will_allow_you'.tr,
      'body': [
        {
          'title': 'Rain',
          'icon': ImageConstant.imgIcons8rainwatercatchment,
          'color': Colors.blue,
          'table': 'rain'
        },
        {
          'title': 'Forest',
          'icon': ImageConstant.imgIcons8forest,
          'color': ColorConstant.greenA400,
          'table': 'forest'
        },
        {
          'title': 'Ocean',
          'icon': ImageConstant.imgIcons8wavelines,
          'color': ColorConstant.blueGray90002,
          'table': 'ocean'
        },
      ]
    }
  ];

  // Rx<List<RowItemModel>> rowItemList =
  //     Rx(List.generate(3, (index) => RowItemModel(title: titles[index])));
}

class MusicModel {
  Rx<String> title = Rx("");
  Rx<String> url = Rx("");
  Rx<String> cover_photo = Rx("");
  Rx<String> artist = Rx("");
  Rx<bool> isPlaying = Rx(false);
  Rx<bool> loading = Rx(false);
  Rx<String> id = Rx('');
  Rx<String> category = Rx('');
  Rx<int?> index = Rx(null);

  MusicModel({
    required String id,
    required String title,
    required String url,
    required int index,
    required String category,
    String? artist,
    String? cover_photo,
    bool isPlaying = false,
    bool loading = false,
  }) {
    this.category.value = category;
    this.index.value = index;
    this.loading.value = loading;
    this.id.value = id;
    this.isPlaying.value = isPlaying;
    this.title.value = title;
    this.url.value = url;
    this.artist .value = artist ?? 'Artist Unkown';
    this.cover_photo.value = cover_photo ?? ImageConstant.imgBabyMusic;
  }

  static fromMap(Map<String, dynamic> data) => MusicModel(
      id: data['id'],
      title: data['title'],
      url: data['url'],
      index: data['index'],
      category: data['category']);
}
