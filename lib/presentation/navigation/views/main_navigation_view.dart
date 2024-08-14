import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serik_online/core/constants/colors.dart';

import '../controllers/main_navigation_controller.dart';

class MainNavigation extends StatelessWidget {
  const MainNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<NavigationController>();
    return Scaffold(
      body: Obx(() {
        return controller.currentPage;
      }),
      bottomNavigationBar: Container(
        height: 60,
        padding: const EdgeInsets.only(top: 10),
        color: NavigationColors.backgroundColor,
        child: Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () => controller.changePage(0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.home_outlined,
                        color: controller.currentIndex.value == 0
                            ? NavigationColors.activeIconColor
                            : NavigationColors.inactiveIconColor,
                        size: 25,
                      ),
                      Text(
                        "Anasayfa",
                        style: TextStyle(
                            color: controller.currentIndex.value == 0
                                ? NavigationColors.activeTextColor
                                : NavigationColors.inactiveTextColor),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => controller.changePage(1),
                  child: Column(
                    children: [
                      Icon(
                        Icons.newspaper_outlined,
                        color: controller.currentIndex.value == 1
                            ? NavigationColors.activeIconColor
                            : NavigationColors.inactiveIconColor,
                        size: 25,
                      ),
                      Text(
                        "Haberler",
                        style: TextStyle(
                            color: controller.currentIndex.value == 1
                                ? NavigationColors.activeTextColor
                                : NavigationColors.inactiveTextColor),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => controller.changePage(2),
                  child: Column(
                    children: [
                      Icon(
                        Icons.campaign_outlined,
                        color: controller.currentIndex.value == 2
                            ? NavigationColors.activeIconColor
                            : NavigationColors.inactiveIconColor,
                        size: 25,
                      ),
                      Text(
                        "İlanlar",
                        style: TextStyle(
                            color: controller.currentIndex.value == 2
                                ? NavigationColors.activeTextColor
                                : NavigationColors.inactiveTextColor),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => controller.changePage(3),
                  child: Column(
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: controller.currentIndex.value == 3
                            ? NavigationColors.activeIconColor
                            : NavigationColors.inactiveIconColor,
                        size: 25,
                      ),
                      Text(
                        "Bilgiler",
                        style: TextStyle(
                            color: controller.currentIndex.value == 3
                                ? NavigationColors.activeTextColor
                                : NavigationColors.inactiveTextColor),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => controller.changePage(4),
                  child: Column(
                    children: [
                      Icon(
                        Icons.settings,
                        color: controller.currentIndex.value == 4
                            ? NavigationColors.activeIconColor
                            : NavigationColors.inactiveIconColor,
                        size: 25,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                            color: controller.currentIndex.value == 4
                                ? NavigationColors.activeTextColor
                                : NavigationColors.inactiveTextColor),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
