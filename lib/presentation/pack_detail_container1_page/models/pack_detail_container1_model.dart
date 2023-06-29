import 'package:get/get.dart';import 'listsongname_item_model.dart';/// This class defines the variables used in the [pack_detail_container1_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PackDetailContainer1Model {Rx<List<ListsongnameItemModel>> listsongnameItemList = Rx(List.generate(3,(index) => ListsongnameItemModel()));

 }
