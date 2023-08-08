<<<<<<< HEAD
import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/presentation/upcoming_booking_four_screen/models/upcoming_booking_four_model.dart';/// A controller class for the UpcomingBookingFourScreen.
///
/// This class manages the state of the UpcomingBookingFourScreen, including the
/// current upcomingBookingFourModelObj
class UpcomingBookingFourController extends GetxController {Rx<UpcomingBookingFourModel> upcomingBookingFourModelObj = UpcomingBookingFourModel().obs;

 }
=======
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';
import 'package:pbm_app/presentation/upcoming_booking_four_screen/models/upcoming_booking_four_model.dart';

/// A controller class for the UpcomingBookingFourScreen.
///
/// This class manages the state of the UpcomingBookingFourScreen, including the
/// current upcomingBookingFourModelObj
class UpcomingBookingFourController extends GetxController {
  Rx<UpcomingBookingFourModel> upcomingBookingFourModelObj =
      UpcomingBookingFourModel().obs;

  RxString userId = '${Authentication.getCurrentUserId()}'.obs;
  Rx<User?> userDetails = Rx(Authentication.getCurrentUser());

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  /// Navigates to the upcomingBookingThreeScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBookingThreeScreen.
  onTapRowavatar() {
    Get.toNamed(
      AppRoutes.upcomingBookingThreeScreen,
    );
  }

  /// Navigates to the supportV10Screen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the supportV10Screen.
  onTapRowthirty() {
    Get.toNamed(
      AppRoutes.supportV10Screen,
    );
  }

  /// Navigates to the upcomingBookingOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBookingOneScreen.
  onTapRowcalendar() {
    Get.toNamed(
      AppRoutes.upcomingBookingOneScreen,
    );
  }

  /// Navigates to the upcomingBookingFiveScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBookingFiveScreen.
  onTapRowsearch() {
    Get.toNamed(
      AppRoutes.upcomingBookingFiveScreen,
    );
  }

  /// Navigates to the upcomingBookingTwo1Screen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBookingTwo1Screen.
  onTapRowquestionone() {
    Get.toNamed(
      AppRoutes.upcomingBookingTwo1Screen,
    );
  }
}
>>>>>>> dev
