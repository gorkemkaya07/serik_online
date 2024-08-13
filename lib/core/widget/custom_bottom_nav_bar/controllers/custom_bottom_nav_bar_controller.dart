import 'package:get/get.dart';
import '../../../routes/app_pages.dart'; 

class CustomBottomNavBarController extends GetxController {
  var currentIndex = 0.obs;

  void changeTabIndex(int index) {
    currentIndex.value = index;

    switch (index) {
      case 0:
        Get.offAllNamed(Routes.HOME);
        break;
      case 1:
        Get.offAllNamed(Routes.NEWS);
        break;
      case 2:
        Get.offAllNamed(Routes.ADS);
        break;
      case 3:
        Get.offAllNamed(Routes.INFO);
        break;
      case 4:
        Get.offAllNamed(Routes.PROFILE);
        break;
      default:
        Get.offAllNamed(Routes.HOME);
        break;
    }
  }
}
