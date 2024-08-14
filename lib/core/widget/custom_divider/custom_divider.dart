import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppColors.lineColor,
      height: 1,
      thickness: 2,
    );
  }
}
