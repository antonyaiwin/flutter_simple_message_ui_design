import 'package:flutter/material.dart';

import '../../../data/dummy/dummy_db.dart';
import 'chat_bubble.dart';

class MessageListView extends StatelessWidget {
  const MessageListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 10),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var itemMap = DummyDb.dummyMessageList[index];
        return ChatBubble(itemMap: itemMap);
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 25);
      },
      itemCount: DummyDb.dummyMessageList.length,
    );
  }
}
