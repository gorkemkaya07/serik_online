import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serik_online/core/widget/custom_bottom_nav_bar/views/custom_bottom_nav_bar_view.dart';
import '../../../core/widget/custom_app_bar/custom_app_bar.dart';
import '../controller/info_controller.dart';

class InfoView extends GetView<InfoController> {
    const InfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(   
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomBottomNavBarView(),
      body: const Center(
        child: Text("InfoPage"),
      )
    );
  }
}