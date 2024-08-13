import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serik_online/core/widget/custom_bottom_nav_bar/controllers/custom_bottom_nav_bar_controller.dart';

class CustomBottomNavBarView extends GetView<CustomBottomNavBarController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: controller.changeTabIndex,
          selectedItemColor: Color(0xFF3F21F9), // Aktif durumdaki renk
          unselectedItemColor: Color(0xFF828282), // Pasif durumdaki renk
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper),
              label: 'News',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.ads_click),
              label: 'Ads',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Info',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ));
  }
}
