import 'package:flutter/material.dart';
import 'package:serik_online/core/constants/colors.dart';

class CommentInputField extends StatefulWidget {
  final TextEditingController controller;
  final VoidCallback onSend;

  const CommentInputField({
    Key? key,
    required this.controller,
    required this.onSend,
  }) : super(key: key);

  @override
  _CommentInputFieldState createState() => _CommentInputFieldState();
}

class _CommentInputFieldState extends State<CommentInputField> {
  final GlobalKey _textFieldKey = GlobalKey();
 

  @override
  Widget build(BuildContext context) {
 

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              key: _textFieldKey,
              minLines: 4,
              maxLines: 4,
              keyboardType: TextInputType.multiline,
              controller: widget.controller,
              decoration: const InputDecoration(
                hintText: 'Sende Yorum Yap',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: widget.onSend,
            child: Container(
              height: 92,
              padding: const EdgeInsets.all(12.0),
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              child: const Icon(Icons.send, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
