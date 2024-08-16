import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serik_online/core/constants/colors.dart';

class HomeLatestNewsListView extends StatelessWidget {
  final List<Map<String, String>> newsList;

  const HomeLatestNewsListView({
    super.key,
    required this.newsList,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Başlık
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "En Son Haberler",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Hepsini Göster",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
            ],
          ),
          // Yana kaydırılabilir liste
          SizedBox(
            height: Get.height * .28, // Kartların yüksekliğini ayarlıyoruz
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: newsList.length,
              itemBuilder: (context, index) {
                final news = newsList[index];
                return GestureDetector(
                  onTap: () {
                    Get.toNamed('/news_detail', arguments: news);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Resim
                        SizedBox(
                          width: Get.width * .75,
                          height: Get.height * .18,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
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
                        const SizedBox(height: 2),
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
                                    fontSize: 16),
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
