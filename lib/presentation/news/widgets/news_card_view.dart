import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:serik_online/core/constants/colors.dart';
import 'package:serik_online/core/widget/custom_divider/custom_divider.dart';

class NewsCard extends StatelessWidget {
  final String title;
  final String commentCount;
  final String imageUrl;
  final String author;
  final String timeAgo;
  final VoidCallback onTap;

  const NewsCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.onTap,
    required this.commentCount,
    required this.author,
    required this.timeAgo,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                height: Get.height * .2,
                width: double.infinity,
                fit: BoxFit.cover,
                placeholder: (context, url) => Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    height: Get.height * .2,
                    width: double.infinity,
                    color: Colors.white,
                  ),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const SizedBox(height: 5),
         Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20.0),
  child: SizedBox(
    width: Get.width,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
             Row(
          children: [
            Text(
              author,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(width: 8),
            const Text(
              '•',
              style: TextStyle(
                  color: AppColors.textFieldText, fontSize: 16),
            ),
            const SizedBox(width: 8),
            Text(
              timeAgo,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: AppColors.subtitleColor,
                  ),
            ),
          ],
        ),
        Row(
          children: [
            const Icon(Icons.comment,
                size: 14, color: AppColors.subtitleColor),
            const SizedBox(width: 4),
            Text(
              commentCount,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: AppColors.subtitleColor,
                  ),
            ),
          ],
        ),
   
      ],
    ),
  ),
),

          const SizedBox(height: 10),
          const CustomDivider(),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
