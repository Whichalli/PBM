import 'package:get/get.dart';import 'package:pbm_care/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [already_signed_up_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AlreadySignedUpOneModel {Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<String>> radioList = Rx(["lbl_nurse","msg_physical_therapist","msg_registered_behavior"]);

 }
