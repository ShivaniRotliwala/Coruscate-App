import 'package:coruscate/presentation/bottom_nav_bar/model/bottom_nav_bar_model.dart';

import '/core/app_export.dart';
import 'package:get/get.dart';

class BottomNavBarController extends GetxController {
  var tabIndex = 0.obs;

  changeTabIndex(int index) {
    tabIndex.value = index;
    if (tabIndex.value == 0) {
      Get.toNamed(AppRoutes.homepageScreen);
    } else if (tabIndex.value == 1) {
      Get.toNamed(AppRoutes.webinar3Screen);
    } else if (tabIndex.value == 2) {
      Get.toNamed(AppRoutes.webinar1Screen);
    } else if (tabIndex.value == 3) {
      Get.toNamed(AppRoutes.webinar2Screen);
    }
  }

  @override
  void onInit() {
    tabIndex.value = 0;
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
