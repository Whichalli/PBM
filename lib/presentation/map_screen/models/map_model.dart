import 'package:get/get.dart';import 'listcalendar_item_model.dart';import 'listsearch_item_model.dart';/// This class defines the variables used in the [map_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MapModel {Rx<List<ListcalendarItemModel>> listcalendarItemList = Rx(List.generate(3,(index) => ListcalendarItemModel()));

Rx<List<ListsearchItemModel>> listsearchItemList = Rx(List.generate(5,(index) => ListsearchItemModel()));

 }
