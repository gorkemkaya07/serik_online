import 'package:carousel_slider/carousel_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/constants/colors.dart';
import '../controllers/news_detail_controller.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({
    super.key,
    required this.controller,
  });

  final NewsDetailController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Column(
        children: [
          CarouselSlider(
            carouselController: controller.carouselController,
            options: CarouselOptions(
              height: Get.height * .25,
              autoPlay: controller.imageUrls.length > 1,
              enlargeCenterPage: false,
              viewportFraction: 1.0,
              enableInfiniteScroll: controller.imageUrls.length > 1,
              onPageChanged: (index, reason) {
                controller.updateCurrentIndex(index);
              },
            ),
            items: controller.imageUrls.map((imageUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: Get.width,
                    color: Colors.white,
                    child: CachedNetworkImage(
                      imageUrl: imageUrl,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => Shimmer.fromColors(
                        baseColor: Colors.grey.shade300,
                        highlightColor: Colors.grey.shade100,
                        child: Container(
                          width: Get.width,
                          height: Get.height * .25,
                          color: Colors.grey.shade300,
                        ),
                      ),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: controller.imageUrls.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () =>
                    controller.carouselController.jumpToPage(entry.key),
                child: Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: controller.currentIndex.value == entry.key
                        ? AppColors.primaryColor
                        : Colors.grey.shade400,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      );
    });
  }
}
