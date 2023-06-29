import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/presentation/services_screen/models/services_model.dart';/// A controller class for the ServicesScreen.
///
/// This class manages the state of the ServicesScreen, including the
/// current servicesModelObj
class ServicesController extends GetxController {Rx<ServicesModel> servicesModelObj = ServicesModel().obs;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in servicesModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} servicesModelObj.value.dropdownItemList.refresh(); } 
 }
