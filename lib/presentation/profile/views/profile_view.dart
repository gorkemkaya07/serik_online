 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serik_online/presentation/profile/controller/profile_controller.dart';
import '../../../core/widget/custom_app_bar/custom_app_bar.dart';
 

class ProfileView extends GetView<ProfileController> {
    const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(   
      appBar: CustomAppBar(),
      body: const Center(
        child: Text("ProfilePage"),
      )
    );
  }
}