import 'package:flutter/material.dart';
import 'package:serik_online/core/constants/colors.dart';

class NewsSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSearch;

  const NewsSearchBar({
    Key? key,
    required this.controller,
    required this.onSearch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        height: 36,
        child: TextField(      
          controller: controller,
          decoration: InputDecoration(
            hintText: 'Haber ara...',
            suffixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.0),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: AppColors.textFieldBg,
            
          ),
        ),
      ),
    );
  }
}
