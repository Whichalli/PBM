import 'package:flutter/widgets.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/presentation/launch_screen/models/launch_model.dart';

/// A controller class for the LaunchScreen.
///
/// This class manages the state of the LaunchScreen, including the
/// current launchModelObj
class LaunchController extends GetxController {
  Rx<LaunchModel> launchModelObj = LaunchModel().obs;

  List<Map<String, dynamic>> pageViewData = [
    {
      'title': 'Sleep Sounds',
      'imagePath': ImageConstant.imgLayer2,
      'svgPath': null,
      'content': ''
    },
    {
      'title': 'Relax Sleep Sounds',
      'imagePath': null,
      'svgPath': ImageConstant.imgGroup,
      'content': 'Our sounds will help to relax and improve your sleep health'
    },
    {
      'title': 'Story for Kids',
      'imagePath': null,
      'svgPath': ImageConstant.imgGroupLightBlue800,
      'content':
          'Famous fairy tales with soothing sounds will help your children fall asleep faster'
    }
  ];

  int _pageNo = 0;
  @override
  void onInit() {
    _pageNo = 0;
    // TODO: implement onInit
    super.onInit();
  }

  PageController pageController = PageController(initialPage: 0);

  /// Navigates to the loginSlideTwoScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the loginSlideTwoScreen.
  onTapNext() {
    if (_pageNo < 2) {
      pageController.nextPage(
          duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
      _pageNo++;
      return;
    }
    Get.toNamed(
      AppRoutes.packDetailContainerScreen,
    );
  }
}
