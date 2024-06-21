
import 'package:buzz/screens/Avatar/Avatar_screen.dart';
import 'package:buzz/screens/Notification/Notification_Screen.dart';
import 'package:buzz/screens/cart/cart_screen.dart';
import 'package:buzz/screens/chart_module/chart_screen.dart';
import 'package:buzz/screens/checkout/checkout_screen.dart';

import 'package:buzz/screens/dashboard/dashboard_screen.dart';
import 'package:buzz/screens/faq/faq_screen.dart';
import 'package:buzz/screens/general/general_screen.dart';
import 'package:buzz/screens/home/home_screen.dart';
import 'package:buzz/screens/invoice/invoice_screen.dart';
import 'package:buzz/screens/pricing/pricing_screen.dart';
import 'package:buzz/screens/product/product_screen.dart';
import 'package:buzz/screens/product_page/product_page_screen.dart';
import 'package:buzz/screens/project_list/project_list_screen.dart';
import 'package:buzz/screens/user_cards/user_card_screen.dart';
import 'package:buzz/screens/user_edit/user_edit_screen.dart';
import 'package:buzz/screens/user_profile/user_profile_screen.dart';
import 'package:buzz/screens/validation_form/validation_form_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/Buttons/Defult_style/default_style_screen.dart';
import 'screens/Buttons/Flat_buttons/flatbuttons_screen.dart';
import 'screens/Buttons/Raised_buttons/Raisedbuttons_Screen.dart';
import 'screens/Modal/Modal_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      scrollBehavior: MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch, PointerDeviceKind.stylus,
          PointerDeviceKind.unknown,
        }
      ),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      // home: DashBoardScreen(
      //   child: const Text('main'),
      //   screenName: 'Dashboards',
      // ),
      home:
      DashBoardScreen(
        child: ProjectListScreen(),
        screenName: 'Dashboards',
      ),


    );
  }
}
