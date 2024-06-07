import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabController1 extends GetxController {
  late TabController tabController;

  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  // Example of additional data management for scrolling
  var scrollOffset = 0.0.obs;

  void updateScrollOffset(double offset) {
    scrollOffset.value = offset;
  }
}
