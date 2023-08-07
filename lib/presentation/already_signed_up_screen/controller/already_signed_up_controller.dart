import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/presentation/already_signed_up_screen/models/already_signed_up_model.dart';

/// A controller class for the AlreadySignedUpScreen.
///
/// This class manages the state of the AlreadySignedUpScreen, including the
/// current alreadySignedUpModelObj
class AlreadySignedUpController extends GetxController {
  Rx<AlreadySignedUpModel> alreadySignedUpModelObj = AlreadySignedUpModel().obs;
}
