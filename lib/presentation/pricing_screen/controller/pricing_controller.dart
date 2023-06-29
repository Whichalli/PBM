import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/presentation/pricing_screen/models/pricing_model.dart';/// A controller class for the PricingScreen.
///
/// This class manages the state of the PricingScreen, including the
/// current pricingModelObj
class PricingController extends GetxController {Rx<PricingModel> pricingModelObj = PricingModel().obs;

 }
