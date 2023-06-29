import 'package:get/get.dart';import 'home_item_model.dart';/// This class defines the variables used in the [home1_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Home1Model {Rx<List<HomeItemModel>> homeItemList = Rx(List.generate(6,(index) => HomeItemModel()));

 }
