// import 'package:get/get.dart';

import 'package:get/get.dart';
import 'package:pbm_app/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [SelectBaby_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddBabyModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(id: 1, title: "Male", value: 'Male'),
    SelectionPopupModel(id: 2, title: "Female", value: 'Female'),
  ]);
}
