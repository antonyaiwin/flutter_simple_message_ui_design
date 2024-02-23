import 'package:flutter/material.dart';

import '../../../utils/consts/consts.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    required this.itemMap,
  });

  final Map itemMap;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: itemMap['is_current_user']
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
        decoration: BoxDecoration(
          color: itemMap['is_current_user']
              ? ColorConsts.primaryColor
              : ColorConsts.fadedWhite,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          itemMap['message'],
          style: TextStyle(
            color: itemMap['is_current_user'] ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
