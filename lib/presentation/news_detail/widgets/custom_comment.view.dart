import 'package:flutter/material.dart';
import 'package:serik_online/core/constants/colors.dart';

class CustomCommentWidget extends StatelessWidget {
  final String username; // Kullanıcı adı
  final String comment; // Yorum
  final VoidCallback? onEdit; // Düzenle butonu için callback (isteğe bağlı)

  const CustomCommentWidget({
    Key? key,
    required this.username,
    required this.comment,
    this.onEdit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
          
            decoration: BoxDecoration(
               color: Colors.grey[200],
               borderRadius: BorderRadius.circular(13)
               
            ),       // /Avatar için örnek renk
            child:const Icon(Icons.person, color: Colors.grey, size: 48,),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      username,
                      style:Theme.of(context).textTheme.titleMedium
                    ),
                    if (onEdit != null)
                      IconButton(
                        onPressed: onEdit,
                        style: IconButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 0),
                           
                          minimumSize: Size.zero, // Minimum boyut ayarı
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        icon: const Icon(Icons.edit,size: 16, color: AppColors.primaryColor,),
                      ),
                  ],
                ),
                const SizedBox(height: 2),
                Text(
                  comment,
                  style: Theme.of(context).textTheme.bodyMedium
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
