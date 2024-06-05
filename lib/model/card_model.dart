import 'package:flutter/cupertino.dart';

class CardItem {
  final String image;
  final String productName;
  final int price;
  final Widget container;
  final Widget icon;
  final int total;

  CardItem({
    required this.image,
    required this.productName,
    required this.price,
    required this.container,
    required this.icon,
    required this.total,
  });
}