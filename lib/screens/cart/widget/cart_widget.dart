import 'package:buzz/screens/cart/card_controller.dart';
import 'package:buzz/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final CardController productController = Get.find<CardController>();


Widget cartTitle() {
  return const Row(
    children: [
      Text(
        StringRes.cart,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      Spacer(),
      Icon(
        Icons.home,
        size: 18,
      ),
      SizedBox(
        width: 2,
      ),
      Text('/'),
      SizedBox(
        width: 2,
      ),
      Text('E-Commerce'),
      SizedBox(
        width: 2,
      ),
      Text('/'),
      SizedBox(
        width: 2,
      ),
      Text(
        StringRes.cart,
        style: TextStyle(color: Colors.blue),
      )
    ],
  );
}

Widget productTable(){
  return Obx(
        () => Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Card(
                color: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(child: Text('Shopping Cart',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                        SizedBox(height: 20,),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Table(
                            border: TableBorder.all(color: Colors.grey,width: 0.5,borderRadius: BorderRadius.circular(10)),
                            columnWidths: const {
                              0: FixedColumnWidth(200.0),
                              1: FixedColumnWidth(200.0),
                              2: FixedColumnWidth(200.0),
                              3: FixedColumnWidth(200.0),
                              4: FixedColumnWidth(200.0),
                              5: FixedColumnWidth(200.0),
                            },
                            children: [
                              TableRow(
                                children: [
                                  TableCell(child: SizedBox(
                                      height: 50,
                                      width: 200,
                                      child: Center(child: Text('Product')))),
                                  TableCell(child: SizedBox(
                                      height: 50,
                                      width: 200,
                                      child: Center(child: Text('Product Name')))),
                                  TableCell(child: SizedBox(
                                      height: 50,
                                      width: 200,
                                      child: Center(child: Text('Price')))),
                                  TableCell(child: SizedBox(
                                      height: 50,
                                      width: 200,
                                      child: Center(child: Text('Quantity')))),
                                  TableCell(child: SizedBox(
                                      height: 50,
                                      width: 200,
                                      child: Center(child: Text('Action')))),
                                  TableCell(child: SizedBox(
                                      height: 50,
                                      width: 200,
                                      child: Center(child: Text('Total')))),
                                ],
                              ),
                              ...productController.products.map((product) {
                                return TableRow(
                                  children: [
                                    TableCell(
                                      child: SizedBox(
                                        height: 180,
                                        width: 180,
                                        child: Center(
                                          child: Image.asset(product.image, width: 100, height: 100),
                                        ),
                                      ),
                                    ),
                                    TableCell(child: SizedBox(
                                        height: 180,
                                        width: 180,
                                        child: Center(child: Text(product.name)))),
                                    TableCell(child: SizedBox(
                                        height: 180,
                                        width: 180,
                                        child: Center(child: Text('\$${product.price}')))),
                                    TableCell(
                                      child: SizedBox(
                                        height: 180,
                                        width: 200,
                                        child: Center(
                                          child: Container(
                                            width: 90,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Colors.black12
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                IconButton(
                                                  icon: Icon(Icons.remove),
                                                  onPressed: () {
                                                    if (product.quantity.value > 0) {
                                                      product.quantity.value--;
                                                    }
                                                  },
                                                ),
                                                Obx(() => Text('${product.quantity.value}')),
                                                IconButton(
                                                  icon: Icon(Icons.add),
                                                  onPressed: () {
                                                    product.quantity.value++;
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: SizedBox(
                                        height: 180,
                                        width: 180,
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                                             Icon(Icons.edit),
                                            Icon(Icons.favorite),
                                            Icon(Icons.delete_outlined)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    TableCell(child: SizedBox(
                                        height: 180,
                                        width: 180,
                                        child: Center(child: Text('\$${product.total}')))),
                                  ],
                                );
                              }).toList(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Card(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                      ),
                      child:Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order Summary',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            SizedBox(height: 30,),
                            Row(
                              children: [
                                Text('Sub Total :',style: TextStyle(color: Colors.grey),),
                                Spacer(),
                                Text('\$${3434}')
                              ],
                            ),
                            SizedBox(height: 30,),
                            Row(
                              children: [
                                Text('Discount :',style: TextStyle(color: Colors.grey),),
                                Spacer(),
                                Text('\$${54}')
                              ],
                            ),
                            SizedBox(height: 30,),
                            Row(
                              children: [
                                Text('Shiping Charge :',style: TextStyle(color: Colors.grey),),
                                Spacer(),
                                Text('\$${44}')
                              ],
                            ),
                            SizedBox(height: 30,),
                            Row(
                              children: [
                                Text('Estimated Tax :',style: TextStyle(color: Colors.grey),),
                                Spacer(),
                                Text('\$${3434}')
                              ],
                            ),
                            SizedBox(height: 30,),
                            Row(
                              children: [
                                Text('Total(Usd) :'),
                                Spacer(),
                                Text('\$${55}')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Have a promo code?'),
                            SizedBox(height: 10,),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Coupon Code',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10)
                                        )
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.blueAccent,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('Apply',style: TextStyle(
                                        color: Colors.white
                                      ),),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
  );
}



