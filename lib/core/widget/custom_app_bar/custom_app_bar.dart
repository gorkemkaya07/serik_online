import 'package:flutter/material.dart';
import 'package:serik_online/core/constants/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBar({Key? key})
      : preferredSize = const Size.fromHeight(150.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0, // Yüksekliği manuel olarak belirledik
      decoration: const BoxDecoration(
        color: Colors.white, // Arkaplan rengi beyaz
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30), // Alt köşeleri yuvarladık
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Ortalamayı ayarladık
          children: [
                const SizedBox(height: 10),
            Image.asset(
              'assets/images/app_logo.png', // İkonun dosya yolunu belirtin
              height: 30,
            ),
            const SizedBox(height: 10),
            const Text(
              'SERIK ONLINE',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
            Divider(color: AppColors.lineColor,)
          ],
        ),
      ),
    );
  }
}
