import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serik_online/core/widget/custom_app_bar/custom_app_bar.dart';
import 'package:serik_online/presentation/news/widgets/news_search_bar_view.dart';
import 'dart:math';

import '../widgets/news_card_view.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  static List<Map<String, String>> generateRandomNewsList(int count) {
    List<Map<String, String>> newsList = [];
    final random = Random();

    List<String> titles = [
      "Kadriye Yılmaz Konak Düğün Salonunda Büyük Yangın",
      "Serik'te 2 gün süren olayların ardından önemli kararlar alındı",
      "Serik'te fırtına ağaçları devirdi, hasar büyük",
      "Serik sahilinde çevre temizliği yapıldı, katılım yoğundu",
      "Yeni Serik Belediyesi binası inşaatı hızla ilerliyor",
    ];

    List<String> commentCount = [
      "10",
      "20",
      "33",
      "12",
      "4",
    ];

    List<String> authors = [
      "Kadriye",
      "Belek",
      "Merkez",
      "Akçaalan",
      "Belkıs",
    ];

    List<String> timeAgos = [
      "10 dakika önce",
      "20 dakika önce",
      "1 saat önce",
      "2 saat önce",
      "1 gün önce",
    ];

    List<String> imgUrls = [
      "https://wanhabercom.teimg.com/crop/860x504/wanhaber-com/uploads/2024/08/vansariminibuslerzam.jpg",
      "https://dogruhaber.com.tr/images/24/33/ak-parti-duyurdu-belediye-baskanlari-milletvekilleri-ak-partiye-katilacak-8f4e114e.gif",
      "https://barandogan.av.tr/images/yangin-genel-guvenlik-1280x720.webp",
      "https://static.euronews.com/articles/stories/07/77/70/94/1200x675_cmsv2_30c8e408-7fbc-56f1-a154-06d5c6f8f762-7777094.jpg",
      "https://img.ekonomim.com/storage/files/images/2024/08/07/aydinda-yangin-yerlesim-yerlerine-ulasti-ekipler-seferber-oldu-55g8_cover.jpg",
    ];

    for (int i = 0; i < count; i++) {
      newsList.add({
        'id': random.nextInt(10000).toString(),
        'title': titles[random.nextInt(titles.length)],
        'author': authors[random.nextInt(authors.length)], // Yazar
        'timeAgo': timeAgos[random.nextInt(timeAgos.length)], // Süre
        'commentCount': commentCount[random.nextInt(commentCount.length)],
        'imgUrl': imgUrls[random.nextInt(imgUrls.length)],
      });
    }

    return newsList;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    final newsList = generateRandomNewsList(5); // Düzeltilmiş: newsList oluşturuluyor

    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Haberler", style: Theme.of(context).textTheme.headlineLarge),
          ),
          const SizedBox(height: 15),
          NewsSearchBar(
            controller: textEditingController,
            onSearch: () {
              print('${textEditingController.text} Arandı.');
            },
          ),
          const SizedBox(height: 15),
          Expanded(
            child: ListView.builder(
              itemCount: newsList.length,
              itemBuilder: (context, index) {
                final newsItem = newsList[index];

                return NewsCard(
                  title: newsItem['title']!,
                  commentCount: newsItem['commentCount']!,
                  imageUrl: newsItem['imgUrl']!,
                  author: newsItem['author']!,
                  timeAgo: newsItem['timeAgo']!,
                  onTap: () {
                    Get.toNamed('/news_detail', arguments: newsItem);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
