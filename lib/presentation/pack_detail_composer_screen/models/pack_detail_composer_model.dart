import 'package:get/get.dart';import 'listtitle_item_model.dart';/// This class defines the variables used in the [pack_detail_composer_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PackDetailComposerModel {Rx<List<ListtitleItemModel>> listtitleItemList = Rx(List.generate(3,(index) => ListtitleItemModel()));

 }
