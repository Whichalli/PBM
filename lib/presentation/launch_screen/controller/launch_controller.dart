import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/presentation/launch_screen/models/launch_model.dart';/// A controller class for the LaunchScreen.
///
/// This class manages the state of the LaunchScreen, including the
/// current launchModelObj
class LaunchController extends GetxController {Rx<LaunchModel> launchModelObj = LaunchModel().obs;

 }
