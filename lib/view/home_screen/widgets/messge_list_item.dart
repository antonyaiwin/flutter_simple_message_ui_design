import 'package:flutter/material.dart';
import 'package:flutter_application_11_message_ui_design/utils/consts/consts.dart';

import '../../chat_screen/chat_screen.dart';

class MessageListItem extends StatelessWidget {
  const MessageListItem({super.key, required this.dataItemMap});
  final Map dataItemMap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatScreen(chatItem: dataItemMap),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: ColorConsts.fadedWhite,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(dataItemMap['profile_image']),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          dataItemMap['username'],
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Text(
                        dataItemMap['time'],
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          dataItemMap['last_message'],
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12,
                            color: dataItemMap['count'] == 0
                                ? Colors.black54
                                : ColorConsts.primaryColor,
                          ),
                        ),
                      ),
                      Visibility(
                        visible: dataItemMap['count'] > 0,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: ColorConsts.primaryColor,
                          child: Text(
                            dataItemMap['count'].toString(),
                            style: const TextStyle(
                              fontSize: 11,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
