import 'package:flutter/material.dart';

import '../../../core/widget/custom_divider/custom_divider.dart';
import 'custom_comment.view.dart';
import 'custom_comment_input_field_view.dart';

class CustomCommentSection extends StatelessWidget {
  final List<Map<String, String>> comments; // Yorumlar
  final TextEditingController commentController =
      TextEditingController(); // Yorum alanı kontrolcüsü

  CustomCommentSection({Key? key, required this.comments}) : super(key: key);

  void _addComment() {
    // Yorum ekleme işlemi burada yapılır.
    // Yeni yorumu comments listesine ekleyip setState ile güncelleyebilirsin.
    print('Yeni Yorum: ${commentController.text}');
    commentController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Padding(
          padding:const  EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Text(
            'Yorumlar',
            style:Theme.of(context).textTheme.headlineLarge
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: comments.length,
          itemBuilder: (context, index) {
            final comment = comments[index];
            return CustomCommentWidget(
              username: comment['username'] ?? 'Anonim',
              comment: comment['comment'] ?? '',
              onEdit: () {
                // Düzenleme işlemi için burada bir işlev eklenebilir
                print('Yorumu düzenle: ${comment['username']}');
              },
            );
          },
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: CustomDivider(),
        ),
        CommentInputField(
          controller: commentController,
          onSend: _addComment,
        ),
      ],
    );
  }
}
