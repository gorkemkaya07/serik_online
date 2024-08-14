part of 'app_pages.dart';

abstract class Routes {
  static const HOME = _Paths.HOME;
  static const NEWS = _Paths.NEWS;
  static const ADS = _Paths.ADS;
  static const INFO = _Paths.INFO;
  static const PROFILE = _Paths.PROFILE;
  static const STORY_DETAIL = _Paths.STORY_DETAIL;
  // Diğer rotalar...
}

abstract class _Paths {
  static const HOME = '/home';
  static const NEWS = '/news';
  static const ADS = '/ads';
  static const INFO = '/info';
  static const PROFILE = '/profile';
  static const STORY_DETAIL = '/story_detail';
  // Diğer yollar...
}
