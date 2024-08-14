import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serik_online/presentation/ads/controller/ads_controller.dart';
import '../../../core/widget/custom_app_bar/custom_app_bar.dart';

class AdsView extends GetView<AdsController> {
    const AdsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(   
      appBar: CustomAppBar(),
      body: const Center(
        child: Text("AdsPage"),
      )
    );
  }
}