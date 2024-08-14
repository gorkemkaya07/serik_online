import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serik_online/core/constants/colors.dart';

class HomeStoryDetailView extends StatelessWidget {
  HomeStoryDetailView({super.key});
  final arg = Get.arguments;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      SizedBox(
        width: Get.width,
        height: Get.height,
        child: Image.network("${arg[0]}",width: 1920,height: 1080,fit: BoxFit.fill,),
      ),
      const Align(
        alignment: Alignment.bottomCenter,
        child:  LinearProgressIndicator(
          color: AppColors.lineColor,
backgroundColor: Colors.transparent,
        ),
      )
    ]));
  }
}
