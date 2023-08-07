import 'package:get/get.dart';import 'listsearch1_item_model.dart';/// This class defines the variables used in the [past_booking_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PastBookingDetailsModel {Rx<List<Listsearch1ItemModel>> listsearch1ItemList = Rx(List.generate(3,(index) => Listsearch1ItemModel()));

 }
