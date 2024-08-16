import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class NewsDetailTitle extends StatelessWidget {
  const NewsDetailTitle({
    super.key,
    required this.news,
  });

  final dynamic news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Haber Detayı',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Row(
            children: [
              Text(
                news['author']!,
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
                news['timeAgo']!,
              ),
            ],
          )
        ],
      ),
    );
  }
}
