import 'package:get/get.dart';
import 'package:serik_online/core/widget/custom_bottom_nav_bar/bindings/custom_bottom_nav_bar_binding.dart';
import 'package:serik_online/core/widget/custom_bottom_nav_bar/views/custom_bottom_nav_bar_view.dart';
import 'package:serik_online/modules/ads/bindings/ads_binding.dart';
import 'package:serik_online/modules/ads/views/ads_view.dart';
import 'package:serik_online/modules/home/bindings/home_binding.dart';
import 'package:serik_online/modules/info/bindings/info_binding.dart';
import 'package:serik_online/modules/info/views/info_view.dart';
import 'package:serik_online/modules/news/bindings/news_binding.dart';
import 'package:serik_online/modules/news/views/news_view.dart';
import 'package:serik_online/modules/profile/bindings/profile_binding.dart';
import 'package:serik_online/modules/profile/views/profile_view.dart';
import '../../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    // Diğer rotalar...
    GetPage(
      name: _Paths.NEWS,
      page: () => const NewsView(),
      binding: NewsBinding(),
    ),
    GetPage(
      name: _Paths.ADS,
      page: () => const AdsView(),
      binding: AdsBinding(),
    ),
    GetPage(
      name: _Paths.INFO,
      page: () => const InfoView(),
      binding: InfoBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
 GetPage(
      name: _Paths.NAV, // Bu yolu da app_routes.dart dosyasına eklemelisiniz
      page: () => CustomBottomNavBarView(), // Doğru widget burada kullanılmalı
      binding: CustomBottomNavBarBinding(),
    ),
  ];
}
