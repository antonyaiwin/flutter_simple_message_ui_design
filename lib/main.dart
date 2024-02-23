import 'package:flutter/material.dart';
import 'package:flutter_application_11_message_ui_design/utils/consts/consts.dart';

import 'view/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorConsts.primaryColor),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
