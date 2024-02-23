import 'package:flutter/material.dart';
import 'package:flutter_application_11_message_ui_design/utils/consts/consts.dart';

import 'pages/history_page.dart';
import 'pages/home_page.dart';
import 'pages/message_page.dart';
import 'pages/profile_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexValue = 2;
  List pages = const [
    HomePage(),
    HistoryPage(),
    MessagePage(),
    ProfilePage(),
  ];
  List pageTitles = const [
    'Home',
    'History',
    'Messages',
    'Profile',
  ];
  List bottomNavIcons = const [
    Icons.home_outlined,
    Icons.schedule_outlined,
    Icons.message_outlined,
    Icons.account_circle_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(pageTitles[indexValue]),
        leading: const BackButton(),
        titleTextStyle: const TextStyle(
          color: ColorConsts.primaryColor,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: pages[indexValue],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexValue,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        onTap: (value) {
          setState(() {
            indexValue = value;
          });
        },
        items: [
          for (int i = 0; i < 4; i++)
            BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.all(10),
                decoration: indexValue != i
                    ? null
                    : BoxDecoration(
                        color: ColorConsts.primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                child: Icon(bottomNavIcons[i]),
              ),
              label: '',
              backgroundColor: ColorConsts.primaryColor,
            ),
        ],
      ),
    );
  }
}
