import 'package:flutter/material.dart';
import 'package:flutter_application_11_message_ui_design/utils/consts/consts.dart';
import 'package:flutter_application_11_message_ui_design/view/chat_screen/widgets/message_field.dart';

import '../../data/dummy/dummy_db.dart';
import 'widgets/message_list_view.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.chatItem});
  final Map chatItem;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController messageController = TextEditingController();

  @override
  void initState() {
    DummyDb.dummyMessageList.shuffle();
    messageController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.chatItem['username']),
        titleTextStyle: const TextStyle(
          color: ColorConsts.primaryColor,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        actions: const [
          CircleAvatar(
            radius: 15,
            backgroundColor: ColorConsts.fadedWhite,
            child: Icon(
              Icons.call_outlined,
              size: 18,
            ),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            radius: 15,
            backgroundColor: ColorConsts.fadedWhite,
            child: Icon(
              Icons.videocam_outlined,
              size: 18,
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
              child: MessageListView(),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Flexible(
                  child: MessageField(
                    messageController: messageController,
                  ),
                ),
                const SizedBox(width: 10),
                IconButton.filled(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConsts.primaryColor,
                  ),
                  padding: const EdgeInsets.all(12),
                  onPressed: () {},
                  icon: Icon(
                    messageController.text.isEmpty ? Icons.mic : Icons.send,
                  ),
                ),
                const SizedBox(width: 4),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
