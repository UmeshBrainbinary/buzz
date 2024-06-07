import 'package:buzz/demo.dart';
import 'package:buzz/screens/Buttons/Edge_style/Edgebuttons_screen.dart';
import 'package:buzz/screens/Chartscreen/ChartScreen.dart';
import 'package:buzz/screens/Menu%20Level/Level_1/level_1_1.dart';
import 'package:buzz/screens/Notification/Notification_Screen.dart';
import 'package:buzz/screens/dashboard/dashboard_screen.dart';
import 'package:buzz/screens/faq/faq_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/Buttons/Defult_style/default_style_screen.dart';
import 'screens/Buttons/Flat_buttons/flatbuttons_screen.dart';
import 'screens/Buttons/Raised_buttons/Raisedbuttons_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DashBoardScreen(index: 2,
      child: Text("2233"),),
      // home: DashBoardScreen(
      //   child: const Text('main'),
      //   index: 0,
      // ),
    );
  }
}
