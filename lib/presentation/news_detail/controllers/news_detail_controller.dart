import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class NewsDetailController extends GetxController {
  var imageUrls = <String>[].obs;
  RxInt currentIndex = 0.obs;

  // CarouselController'ı tanımlıyoruz
  final CarouselSliderController carouselController = CarouselSliderController();

  @override
  void onInit() {
    imageUrls.value = [Get.arguments['imgUrl']];
    imageUrls.add('https://static.birgun.net/resim/haber/2024/08/16/gaziantep-te-hali-fabrikasinda-yangin.png');
    super.onInit();
  }

  // Slider'daki mevcut sayfayı güncellemek için bir fonksiyon
  void updateCurrentIndex(int index) {
    currentIndex.value = index;
  }
}
