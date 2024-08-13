import 'package:get/get.dart';

import '../controllers/custom_bottom_nav_bar_controller.dart';

class CustomBottomNavBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomBottomNavBarController>(() => CustomBottomNavBarController());
  }
}