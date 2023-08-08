<<<<<<< HEAD
import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/presentation/upcoming_booking_two1_screen/models/upcoming_booking_two1_model.dart';/// A controller class for the UpcomingBookingTwo1Screen.
///
/// This class manages the state of the UpcomingBookingTwo1Screen, including the
/// current upcomingBookingTwo1ModelObj
class UpcomingBookingTwo1Controller extends GetxController {Rx<UpcomingBookingTwo1Model> upcomingBookingTwo1ModelObj = UpcomingBookingTwo1Model().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

onSelected(dynamic value) { for (var element in upcomingBookingTwo1ModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} upcomingBookingTwo1ModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in upcomingBookingTwo1ModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} upcomingBookingTwo1ModelObj.value.dropdownItemList1.refresh(); } 
 }
=======
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/presentation/upcoming_booking_two1_screen/models/upcoming_booking_two1_model.dart';

/// A controller class for the UpcomingBookingTwo1Screen.
///
/// This class manages the state of the UpcomingBookingTwo1Screen, including the
/// current upcomingBookingTwo1ModelObj
class UpcomingBookingTwo1Controller extends GetxController {
  Rx<UpcomingBookingTwo1Model> upcomingBookingTwo1ModelObj =
      UpcomingBookingTwo1Model().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  onSelected(dynamic value) {
    for (var element
        in upcomingBookingTwo1ModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    upcomingBookingTwo1ModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element
        in upcomingBookingTwo1ModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    upcomingBookingTwo1ModelObj.value.dropdownItemList1.refresh();
  }
}
>>>>>>> dev
