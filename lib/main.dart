import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serik_online/core/constants/themes.dart';
import 'package:serik_online/core/routes/app_pages.dart';
import 'package:serik_online/modules/home/bindings/home_binding.dart';

void main() {
  runApp(
    GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.INITIAL,
        theme: AppThemes.theme,
        defaultTransition: Transition.fade,
        initialBinding: HomeBinding(),
         getPages: AppPages.routes,       
    )
  );
}