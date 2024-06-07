import 'package:buzz/screens/checkout/checkout_controller.dart';
import 'package:buzz/screens/checkout/widget/checkout_widget.dart';
import 'package:buzz/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckOutScreen extends StatelessWidget {
  CheckOutScreen({super.key});

  CheckoutController controller = Get.put(CheckoutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf2f4f6),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              checkOutTitle(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Billing Details',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: detailsContainer()),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  StringRes.product,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                Spacer(),
                                Text(
                                  StringRes.price,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ],
                            ),
                            Container(
                              height: 350,
                              child: ListView.builder(
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/shoes.webp',
                                              height: 50,
                                              width: 50,
                                            ),
                                            const Text(
                                              'Shoes Campus',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                            Spacer(),
                                            Text('\$${455}')
                                          ],
                                        ),
                                      )
                                    ],
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text(
                                  StringRes.sunTotal,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Text('\$${654}'),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text(
                                  StringRes.discount,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Text('\$${654}'),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text(
                                  StringRes.shipping,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Text('\$${654}'),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text(
                                  StringRes.tex,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Text('\$${654}'),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text(
                                  StringRes.totalUsd,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Text('\$${654}',style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Spacer(),
                                buildContainer(
                                  color: Colors.red,
                                  text: 'Cancel'
                                ),
                                SizedBox(width: 10,),
                                buildContainer(
                                    color: Colors.blueAccent,
                                    text: 'Processed'
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
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

  Container buildContainer({Color? color,required  String text,}) {
    return Container(
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: color,
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.only(left: 8.0,right: 8),
                              child: Text(text,style: TextStyle(color: Colors.white),),
                            )),
                          );
  }
}
