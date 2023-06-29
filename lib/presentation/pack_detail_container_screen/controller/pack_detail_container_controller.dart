import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/presentation/pack_detail_container_screen/models/pack_detail_container_model.dart';/// A controller class for the PackDetailContainerScreen.
///
/// This class manages the state of the PackDetailContainerScreen, including the
/// current packDetailContainerModelObj
class PackDetailContainerController extends GetxController {Rx<PackDetailContainerModel> packDetailContainerModelObj = PackDetailContainerModel().obs;

 }
