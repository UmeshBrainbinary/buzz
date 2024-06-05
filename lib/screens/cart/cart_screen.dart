import 'package:buzz/screens/cart/card_controller.dart';
import 'package:buzz/screens/cart/widget/cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
   CartScreen({super.key});

   final CardController productController = Get.put(CardController());


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              cartTitle(),
              SizedBox(height: 20,),
              //tableInvoice(),
              productTable(),

            ],
          ),
        ),
      ),
    );
  }
}
