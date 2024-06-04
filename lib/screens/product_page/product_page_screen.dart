import 'package:buzz/screens/product_page/widget/product_page_widget.dart';
import 'package:flutter/material.dart';

class ProductPageScreen extends StatelessWidget {
  ProductPageScreen({super.key});

  List color = [
    Colors.purple,
    Colors.greenAccent,
    Colors.pink,
    Colors.deepPurpleAccent
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              productTitle(),
              Row(
                children: [
                  Card(
                    elevation: 2,
                    child: Container(
                      height: 420,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/girls.png',
                            fit: BoxFit.fill,
                          )),
                    ),
                  ),
                  Card(
                    child: listProduct(),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, right: 100, top: 10, bottom: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 5,),
                                  Text(
                                    'Brand',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    'Clothing',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    'Bags',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    'Footwear',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    'Watchas',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    'ACCESSCRIES',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Card(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Column(
                              children: [
                                SizedBox(height: 5,),

                                buildPadding(),
                                SizedBox(height: 5,),
                                buildPadding(),
                                SizedBox(height: 5,),
                                buildPadding(),
                                SizedBox(height: 5,),
                                buildPadding(),
                                SizedBox(height: 10,),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding buildPadding() {
    return Padding(
        padding:
            const EdgeInsets.only(left: 8.0, top: 10,),
        child: Row(
          children: [
            Icon(
              Icons.shopping_cart_sharp,
              color: Colors.deepPurpleAccent,
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Free Shopping'),
                Text(
                  'Free shipping world wide',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            )
          ],
        )

    );
  }
}
