import 'package:buzz/screens/cart/cart_screen.dart';
import 'package:buzz/screens/checkout/checkout_screen.dart';
import 'package:buzz/screens/dashboard/dashboard_screen.dart';
import 'package:buzz/screens/faq/faq_screen.dart';
import 'package:buzz/screens/invoice/invoice_screen.dart';
import 'package:buzz/screens/pricing/pricing_screen.dart';
import 'package:buzz/screens/product/product_screen.dart';
import 'package:buzz/screens/product_page/product_page_screen.dart';
import 'package:buzz/screens/user_edit/user_edit_screen.dart';
import 'package:buzz/screens/user_profile/user_profile_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

      // home: const FaqScreen(),

      // home: DashBoardScreen(
      //   child: const Text('main'),
      //   screenName: 'Dashboards',
      // ),
      home: DashBoardScreen(
        child: UserEditScreen(),
        screenName: 'user',
      ),


    );
  }
}
