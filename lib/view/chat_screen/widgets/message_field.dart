import 'package:flutter/material.dart';

import '../../../utils/consts/consts.dart';

class MessageField extends StatefulWidget {
  const MessageField({super.key, required this.messageController});
  final TextEditingController messageController;

  @override
  State<MessageField> createState() => _MessageFieldState();
}

class _MessageFieldState extends State<MessageField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConsts.fadedWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.black45,
            ),
          ),
          Expanded(
            child: TextField(
              controller: widget.messageController,
              maxLines: 6,
              minLines: 1,
              decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 5),
                hintText: 'Write here',
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
              color: Colors.black45,
            ),
          ),
        ],
      ),
    );
  }
}
