part of 'app_pages.dart';

abstract class Routes {
  static const HOME = _Paths.HOME;
  static const NEWS = _Paths.NEWS;
  static const ADS = _Paths.ADS;
  static const INFO = _Paths.INFO;
  static const PROFILE = _Paths.PROFILE;
    static const NAV = _Paths.NAV;
  // Diğer rotalar...
}

abstract class _Paths {
  static const HOME = '/home';
  static const NEWS = '/news';
  static const ADS = '/ads';
  static const INFO = '/info';
  static const PROFILE = '/profile';
  static const NAV = '/nav';
  // Diğer yollar...
}
