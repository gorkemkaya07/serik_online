import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serik_online/core/widget/custom_app_bar/custom_app_bar.dart';
import 'package:serik_online/core/widget/custom_bottom_nav_bar/views/custom_bottom_nav_bar_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
    const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(   
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomBottomNavBarView(),
      body: const Center(
        child: Text("HomePage"),
        
      )
    );
  }
}