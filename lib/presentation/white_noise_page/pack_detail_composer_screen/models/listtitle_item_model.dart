import 'package:get/get.dart';

/// This class is used in the [listtitle_item_widget] screen.
class ListtitleItemModel {
  Rx<String> title = Rx("");
  Rx<String> image = Rx("");
  Rx<String> url = Rx("");
  Rx<String> subTitle = Rx("");
  Rx<String>? id = Rx("");
  Rx<int> index = Rx(0);

  // Rx<String> subtitleTxt = Rx("Audio Stories");

  // Rx<String> genderTxt = Rx("Rain");

  // Rx<String> titleoneTxt = Rx("Forest");

  // Rx<String> titletwoTxt = Rx("Lullaby");

  ListtitleItemModel(
      {required String title,
      required String image,
      String? subTitle,
      required int index,
      required String url}) {
    this.title.value = title;
    this.image.value = image;
    this.subTitle.value = 'Artist: ${subTitle ?? 'Unknown'}';
    this.url.value = url;
    this.index.value = index;
  }
}
