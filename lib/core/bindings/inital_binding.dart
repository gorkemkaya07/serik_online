
import 'package:get/get.dart';

import '../../presentation/home/controllers/home_controller.dart';
import '../../presentation/navigation/controllers/main_navigation_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    // NavigationController'ı yükle
    Get.lazyPut<NavigationController>(() => NavigationController());
    
    // HomeController'ı yükle
    Get.lazyPut<HomeController>(() => HomeController());

    // Diğer controller veya servisleri yükle
    // Get.lazyPut<OtherController>(() => OtherController());
  }
}