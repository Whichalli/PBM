import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/presentation/calling_nurse_screen/models/calling_nurse_model.dart';

/// A controller class for the CallingNurseScreen.
///
/// This class manages the state of the CallingNurseScreen, including the
/// current callingNurseModelObj
class CallingNurseController extends GetxController {
  Rx<CallingNurseModel> callingNurseModelObj = CallingNurseModel().obs;
}
