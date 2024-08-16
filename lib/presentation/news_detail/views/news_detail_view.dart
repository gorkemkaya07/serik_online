import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serik_online/core/widget/custom_app_bar/custom_app_bar.dart';
import 'package:serik_online/core/widget/custom_divider/custom_divider.dart';
import '../controllers/news_detail_controller.dart';
import '../widgets/custom_card_view.dart';
import '../widgets/custom_carousel_slider.view.dart';
import '../widgets/custom_comment_section_view.dart';
import '../widgets/news_detail_title_view.dart';

class NewsDetailView extends GetView<NewsDetailController> {
  NewsDetailView({super.key});
  final news = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(height: 15),
            NewsDetailTitle(news: news),
            const SizedBox(height: 8),
            CustomCarouselSlider(controller: controller),
            const SizedBox(height: 10),
              CustomCard(
                title: news['title'],
                content:
                    'Yangın bugün saat 15.00 sıralarında Kadriye – Belek turizm yolu üzerinde meydana geldi. Turizm caddesi üzerinde bulunan otluk alanda elektrik tellerinden kaynaklı yangın çıktı. Alevler rüzgarın etkisi ile arazinin aynında bulunan ormanlık alana ve bir düğün salonunun depo binasına sıçradı. Vatandaşların ihbarı üzerine bölgeye polis, itfaiye ve Orman İşletme Müdürlüğüne ait ekipler sevk edildi. 6 İtfaiye ile 2 Arasöz’ün müdahale ettiği yangın çevrede bulunan villalara sıçramadan 1 saatte söndürüldü. Yangında Bir düğün salonunun depo binasının bir bölümü ile depoda bulunan malzemeler tamamen yanarak maddi zarar meydana geldi. Öte yandan yaklaşık 5 dönüm ormanlık alan içerisinde bulunan ağaçlar ile 7 dönümde otluk alan yandı.' +
                        "Yangın alanından çıkan dumanlar sahilde bulunan 5 yıldızlı otellerinin üzerini kapladı. Yangınla ilgili itfaiye ekiplerinin soğutma çalışmaları devam ediyor. Polis yangınla ilgili inceleme başlattı.",
                date: news['timeAgo']),
            const SizedBox(height: 10),
            const CustomDivider(),
            const SizedBox(height: 10),
            CustomCommentSection(
              comments: const [
                {
                  'username': 'Görkem Kaya',
                  'comment':
                      'Gerçekten çok kötü olmuş vefat eden arkadaşların mekanı cennet olsun inşallah.'
                },
                {
                  'username': 'Mustafa Kara',
                  'comment':
                      'Gerçekten çok kötü olmuş vefat eden arkadaşların mekanı cennet olsun inşallah.'
                },
                {
                  'username': 'Özkan Kocakaplan',
                  'comment':
                      'Gerçekten çok kötü olmuş vefat eden arkadaşların mekanı cennet olsun inşallah.'
                },
              ],
            ),
            
          ]),
        ));
  }
}
