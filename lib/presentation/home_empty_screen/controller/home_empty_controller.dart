import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/presentation/home_empty_screen/models/home_empty_model.dart';/// A controller class for the HomeEmptyScreen.
///
/// This class manages the state of the HomeEmptyScreen, including the
/// current homeEmptyModelObj
class HomeEmptyController extends GetxController {Rx<HomeEmptyModel> homeEmptyModelObj = HomeEmptyModel().obs;

 }
