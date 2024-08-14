import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/widget/custom_app_bar/custom_app_bar.dart';
import '../controller/news_controller.dart';

class NewsView extends GetView<NewsController> {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: const Center(
          child: Text("NewsPage"),
        ));
  }
}
