import 'package:get/get.dart';

import '../controller/news_controller.dart';

class NewsBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<NewsController>(() => NewsController());
    
  }
}