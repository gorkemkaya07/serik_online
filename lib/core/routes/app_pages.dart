import 'package:get/get.dart';
import 'package:serik_online/presentation/ads/bindings/ads_binding.dart';
import 'package:serik_online/presentation/ads/views/ads_view.dart';
import 'package:serik_online/presentation/home/bindings/home_binding.dart';
import 'package:serik_online/presentation/home/widgets/home_story_detail_view.dart';
import 'package:serik_online/presentation/info/bindings/info_binding.dart';
import 'package:serik_online/presentation/info/views/info_view.dart';
import 'package:serik_online/presentation/news/bindings/news_binding.dart';
import 'package:serik_online/presentation/news/views/news_view.dart';
import 'package:serik_online/presentation/profile/bindings/profile_binding.dart';
import 'package:serik_online/presentation/profile/views/profile_view.dart';
import '../../presentation/home/views/home_view.dart';

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
      name: _Paths.STORY_DETAIL,
      page: () => HomeStoryDetailView(),
    ),
  ];
}
