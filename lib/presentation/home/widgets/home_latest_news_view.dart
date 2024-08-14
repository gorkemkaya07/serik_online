import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serik_online/core/constants/colors.dart';

class HomeLatestNewsListView extends StatelessWidget {
  final List<Map<String, String>> newsList;

  const HomeLatestNewsListView({
    Key? key,
    required this.newsList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0,left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Başlık
          Text(
            "En Son Haberler",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 8),
          // Yana kaydırılabilir liste
          SizedBox(
            height: Get.height * .25, // Kartların yüksekliğini ayarlıyoruz
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: newsList.length,
              itemBuilder: (context, index) {
                final news = newsList[index];
                return GestureDetector(
                  onTap: () {
                    Get.toNamed('/newsDetail', arguments: news['id']);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Resim
                        SizedBox(
                          width: Get.width * .65,
                          height: Get.height * .15,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.network(
                              news['imgUrl']!,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        // Başlık ve detay bağlantısı
                        SizedBox(
                          width: Get.width * .65,
                          child: Text(
                            news['title']!,
                            style: Theme.of(context).textTheme.titleMedium,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(height: 4),
                        // Yazar ve zaman bilgisi
                        SizedBox(
                          width: Get.width * .65,
                          child: Row(
                            children: [
                              Text(
                                news['author']!,
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                '•',
                                style: TextStyle(
                                  color: AppColors.textFieldText,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                news['timeAgo']!,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
