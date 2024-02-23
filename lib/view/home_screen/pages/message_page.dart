import 'package:flutter/material.dart';
import 'package:flutter_application_11_message_ui_design/data/dummy/dummy_db.dart';
import 'package:flutter_application_11_message_ui_design/utils/consts/consts.dart';

import '../widgets/active_list_view.dart';
import '../widgets/messge_list_item.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              isDense: true,
              prefixIcon: const Icon(Icons.search, size: 30),
              suffixIcon: const Icon(Icons.mic_none_outlined, size: 30),
              prefixIconColor: Colors.black45,
              suffixIconColor: Colors.black45,
              hintStyle: const TextStyle(color: Colors.black45),
              fillColor: ColorConsts.fadedWhite,
              filled: true,
              hintText: 'Select a Doctor',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Active Now',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 10),
          const ActiveListView(),
          const SizedBox(height: 20),
          const Text(
            'Messages',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 20),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: DummyDb.dummyChatList.length,
            itemBuilder: (context, index) {
              return MessageListItem(
                dataItemMap: DummyDb.dummyChatList[index],
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 10);
            },
          ),
        ],
      ),
    );
  }
}
