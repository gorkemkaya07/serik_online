import 'package:flutter/material.dart';
import 'package:serik_online/core/constants/colors.dart';

class CustomCard extends StatelessWidget {
  final String title; // Başlık
  final String content; // İçerik
  final String date; // Tarih

  const CustomCard({
    super.key,
    required this.title,
    required this.content,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(height: 10),
          Text(content, style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                date,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              TextButton.icon(
                onPressed: () {
                  // Yorum butonuna basılınca yapılacak işlemler
                },
                icon: const Icon(Icons.comment),
                label:   Text("12",style: Theme.of(context).textTheme.bodyMedium),
                style: TextButton.styleFrom(
                  foregroundColor: AppColors.primaryColor
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
