<<<<<<< HEAD
import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/presentation/pricing_screen/models/pricing_model.dart';/// A controller class for the PricingScreen.
///
/// This class manages the state of the PricingScreen, including the
/// current pricingModelObj
class PricingController extends GetxController {Rx<PricingModel> pricingModelObj = PricingModel().obs;

 }
=======
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/presentation/pricing_screen/models/pricing_model.dart';

/// A controller class for the PricingScreen.
///
/// This class manages the state of the PricingScreen, including the
/// current pricingModelObj
class PricingController extends GetxController {
  Rx<PricingModel> pricingModelObj = PricingModel().obs;

  int hours = 0;
  int days = 0;

  var total = 0;

  onChange() {
    var totalHours = (days * 24) + hours;
    total = (75 * totalHours) ~/ 1;
    update();
  }
}
>>>>>>> dev
