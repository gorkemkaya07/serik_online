import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomeStoryView extends StatelessWidget {
  const HomeStoryView({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> test = [
      "https://levuro.com/wp-content/uploads/2022/12/insta-image-sizes.png",
      "https://www.webtekno.com/images/editor/default/0003/68/5b2ae4da1c0cd20cb5d441da32f8165720a07e90.jpeg",
      "https://www.imgacademy.com/sites/default/files/styles/scale_1700w/public/2022-07/img-homepage-meta_0.jpg?itok=LMirU0Ik",
      "https://www.edademirciart.com/wp-content/uploads/2021/01/online-karakalem-768x1024.jpg",
      "https://coffeemag.com.tr/wp-content/uploads/2017/09/resim-yapma-teknikleri-1-1024x715.jpg",
    ];

    return Container(
      color: Colors.white,
      height: Get.height * .09,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: test.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 15);
        },
        itemBuilder: (context, index) {
          return Center(
            child: InkWell(
              onTap: () => Get.toNamed('/story_detail',arguments: [test[index]]),
              child: CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage(test[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
