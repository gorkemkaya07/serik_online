import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serik_online/core/widget/custom_divider/custom_divider.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBar({Key? key})
      : preferredSize = Size.fromHeight(Get.height * .12),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 150.0, // Yüksekliği manuel olarak belirledik
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween, // Ortalamayı ayarladık
            children: [
              const SizedBox(height: 10),
              Image.asset(
                'assets/images/app_logo.png', // İkonun dosya yolunu belirtin
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Navigator.canPop(context)
                      ? // Sayfanın geri dönülebilir olup olmadığını kontrol eder
                      IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: () {
                            Get.back();
                          },
                        )
                      : const Spacer(flex: 1),
                  const Expanded(
                    flex: 3,
                    child: Text(
                      textAlign: TextAlign.center,
                      'SERIK ONLINE',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  const Spacer(flex: 1)
                ],
              ),
              const CustomDivider()
            ],
          ),
        ),
      ),
    );
  }
}
