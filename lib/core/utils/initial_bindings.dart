import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:pbm_app/core/utils/pref_utils.dart';
import 'package:pbm_app/presentation/nurse_dashboard_page/controller/controller.dart';

import '../../data/apiClient/api_client.dart';
import '../../presentation/parent_page/controller/controller.dart';
import '../../presentation/white_noise_page/controller/controller.dart';
import '../network/network_info.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
    Get.put(WhiteNoiseController());
    Get.put(NurseDashboardScreenController());
    Get.put(ParentDashboardScreenController());
  }
}
