import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../ads/views/ads_view.dart';
import '../../home/views/home_view.dart';
import '../../info/views/info_view.dart';
import '../../news/views/news_view.dart';
import '../../profile/views/profile_view.dart';

class NavigationController extends GetxController {
  var currentIndex = 0.obs;
  final List<Widget> pages = const [
    HomeView(),
    NewsView(),
    AdsView(),
    InfoView(),
    ProfileView(),
  ];
  Widget get currentPage => pages[currentIndex.value];
  void changePage(int index) {
    currentIndex.value = index;
  }
}
