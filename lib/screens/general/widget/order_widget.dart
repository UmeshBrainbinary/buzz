import 'package:buzz/screens/general/general_controller.dart';
import 'package:buzz/utils/Color.dart';
import 'package:flutter/material.dart';

class OrdersTab extends StatelessWidget {
  final OrderData orderData;
  const OrdersTab({super.key, required this.orderData});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment:
        MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                orderData.title,
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: [
                  Text(
                    orderData.price,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: ColorRes.black,
                    ),
                  ),
                  Text(
                    orderData.percentage,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: orderData.color.withOpacity(0.2),
            ),
            padding: const EdgeInsets.all(12),
            child: Image.asset(
              orderData.image,
              color: orderData.color,
            ),
          ),
        ],
      ),
    );
  }
}