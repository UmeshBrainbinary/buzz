import 'package:buzz/screens/cart/cart_screen.dart';
import 'package:buzz/screens/dashboard/dashboard_screen.dart';
import 'package:buzz/screens/faq/faq_screen.dart';
import 'package:buzz/screens/invoice/invoice_screen.dart';
import 'package:buzz/screens/product/product_screen.dart';
import 'package:buzz/screens/product_page/product_page_screen.dart';
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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     // home:  ProductPageScreen(),
      home: DashBoardScreen(
        child: CartScreen(),
        index: 0,
      ),
    );
  }
}
