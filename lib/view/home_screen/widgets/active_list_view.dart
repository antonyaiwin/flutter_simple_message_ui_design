import 'package:flutter/material.dart';
import 'package:flutter_application_11_message_ui_design/data/dummy/dummy_db.dart';
import 'package:flutter_application_11_message_ui_design/utils/consts/consts.dart';

class ActiveListView extends StatelessWidget {
  const ActiveListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Stack(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage:
                  NetworkImage(DummyDb.dummyActiveList[index]['profile_image']),
            ),
            const Positioned(
              right: 2,
              top: 2,
              child: CircleAvatar(
                radius: 7,
                backgroundColor: ColorConsts.activeDotColor,
              ),
            ),
          ],
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 20),
        itemCount: DummyDb.dummyActiveList.length,
      ),
    );
  }
}
