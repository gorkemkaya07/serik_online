import 'package:get/get.dart';

import '../../presentation/navigation/controllers/main_navigation_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    // NavigationController'ı yükle
    Get.lazyPut<NavigationController>(() => NavigationController());

    // HomeController'ı yükle

    // Diğer controller veya servisleri yükle
    // Get.lazyPut<OtherController>(() => OtherController());
  }
}
