import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serik_online/core/widget/custom_app_bar/custom_app_bar.dart';
import 'package:serik_online/core/widget/custom_divider/custom_divider.dart';
import 'package:serik_online/presentation/home/widgets/home_latest_news_view.dart';
import 'package:serik_online/presentation/home/widgets/home_story_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: Column(
          children: [
            Container(
              height: Get.height * .13,
              margin: const EdgeInsets.only(left: 20, top: 10,bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hikayeler",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const HomeStoryView(),
                ],
              ),
            ),
          const CustomDivider(),
          HomeLatestNewsListView(newsList:  generateRandomNewsList(10))
          ],
        ));
  }
}
List<Map<String, String>> generateRandomNewsList(int count) {
  List<Map<String, String>> newsList = [];
  final random = Random();

  List<String> titles = [
    "Kadriye Yılmaz Konak Düğün Salonunda Büyük Yangın",
    "Serik'te 2 gün süren olayların ardından önemli kararlar alındı",
    "Serik'te fırtına ağaçları devirdi, hasar büyük",
    "Serik sahilinde çevre temizliği yapıldı, katılım yoğundu",
    "Yeni Serik Belediyesi binası inşaatı hızla ilerliyor",
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
      'author': authors[random.nextInt(authors.length)],
      'timeAgo': timeAgos[random.nextInt(timeAgos.length)],
      'imgUrl': imgUrls[random.nextInt(imgUrls.length)],
    });
  }

  return newsList;
}