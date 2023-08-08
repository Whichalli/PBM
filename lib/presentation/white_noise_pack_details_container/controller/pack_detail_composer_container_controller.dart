import 'package:get/get.dart';

import '../model/pack_detail_composer_container_model.dart';

/// A controller class for the PackDetailComposerContainerPage.
///
/// This class manages the state of the PackDetailComposerContainerPage, including the
/// current packDetailComposerContainerModelObj
class PackDetailComposerContainerController extends GetxController {
  PackDetailComposerContainerController(
      this.packDetailComposerContainerModelObj);

  Rx<PackDetailComposerContainerModel> packDetailComposerContainerModelObj;
}