import 'package:get/get.dart';
import 'package:pbm_app/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [already_signed_up_Two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AlreadySignedUpTwoModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item Two",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<String>> radioList =
      Rx(["lbl_nurse", "msg_physical_therapist", "msg_registered_behavior"]);
}
