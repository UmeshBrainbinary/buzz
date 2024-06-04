import 'package:get/get.dart';

class DashBoardController extends GetxController{
  final List items = [
    'DashBoards',
    'product',
    'Projects',
    "E-Commerce",
    "Chat",
    'Users',
    "Forms",
    "Tables",
    "Auth Pages",
    'UI Kits',
    'Buttons',
    'FaQs'
  ];

  RxInt currentIndex = 0.obs;
}