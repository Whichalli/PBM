<<<<<<< HEAD
import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/presentation/services_screen/models/services_model.dart';/// A controller class for the ServicesScreen.
///
/// This class manages the state of the ServicesScreen, including the
/// current servicesModelObj
class ServicesController extends GetxController {Rx<ServicesModel> servicesModelObj = ServicesModel().obs;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in servicesModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} servicesModelObj.value.dropdownItemList.refresh(); } 
 }
=======
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/presentation/services_screen/models/services_model.dart';

/// A controller class for the ServicesScreen.
///
/// This class manages the state of the ServicesScreen, including the
/// current servicesModelObj
class ServicesController extends GetxController {
  Rx<ServicesModel> servicesModelObj = ServicesModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in servicesModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    servicesModelObj.value.dropdownItemList.refresh();
  }

  List<Map<String, dynamic>> services = [
    {
      'heading': 'Baby Care',
      'isExpanded': false,
      'subHeading':
          "We understand that every baby is unique, and our team of experienced professionals is dedicated to providing individualized care to meet your baby's needs"
    },
    {
      'heading': 'Mother Care',
      'isExpanded': false,
      'subHeading':
          "We understand that the transition to motherhood can be challenging, and our team of experienced professionals is here to support you every step of the way.",
    },
    {
      'heading': 'Behavioral & Autism Care',
      'isExpanded': false,
      'subHeading':
          'Our team of RBTs is dedicated to providing individualized care to help your loved one reach their full potential.'
    },
    {
      'heading': 'Child Physiotherapy',
      'isExpanded': false,
      'subHeading':
          "Our team of licensed pediatric physiotherapists is dedicated to providing high-quality care that is tailored to each child's individual needs."
    },
    {
      'heading': 'Nanny Coaching',
      'isExpanded': false,
      'subHeading':
          "Our team of experienced nanny coaches is dedicated to providing personalized coaching that is tailored to each nanny's individual needs."
    },
    {
      'heading': 'Workshops',
      'isExpanded': false,
      'subHeading':
          "Our workshops cover a range of topics related to mother and child care, and are designed to be informative, engaging, and interactive."
    },
  ];

  onTapChoosePediatrician() {
    Get.toNamed(AppRoutes.upcomingBooking1Screen);
  }
}
>>>>>>> dev
