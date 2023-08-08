<<<<<<< HEAD
import 'package:get/get.dart';/// This class is used in the [gridframe811_item_widget] screen.
class Gridframe811ItemModel {Rx<String> typeTxt = Rx("Babysitting");

Rx<String>? id = Rx("");

 }
=======
import 'package:get/get.dart';

/// This class is used in the [gridframe811_item_widget] screen.
class Gridframe811ItemModel {
  Rx<String> typeTxt = Rx("");

  Rx<String>? id = Rx("");
  Rx<bool> active = Rx(false);
  Gridframe811ItemModel({required String txt, bool? active}) {
    this.typeTxt = RxString(txt);
    this.active.value = active ?? false;
  }
}
>>>>>>> dev
