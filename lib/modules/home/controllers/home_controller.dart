import 'package:get/get.dart';

class HomeController extends GetxController {
  // Örneğin bir sayaç değişkeni
  var counter = 0.obs;

  void increment() {
    counter++;
  }

  @override
  void onInit() {
    super.onInit();
    // Initialization işlemleri
  }

  @override
  void onReady() {
    super.onReady();
    // UI hazır olduğunda yapılacak işlemler
  }

  @override
  void onClose() {
    // Controller yok edildiğinde yapılacak işlemler
    super.onClose();
  }
}