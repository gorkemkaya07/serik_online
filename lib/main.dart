import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serik_online/core/constants/themes.dart';
import 'package:serik_online/core/routes/app_pages.dart';
import 'package:serik_online/presentation/navigation/views/main_navigation_view.dart';

import 'core/bindings/inital_binding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.theme,
      initialBinding:
          InitialBinding(), // Tüm binding'leri burada tanımlayacağız
      getPages: AppPages.routes, // Sayfaların rotaları
      home: const MainNavigation(), // İlk olarak Anasayfa'yı gösterecek
    );
  }
}
