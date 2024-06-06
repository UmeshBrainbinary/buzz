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
                                      child: Center(child: Text('Product',style: TextStyle(fontWeight: FontWeight.bold),)))),
                                  TableCell(child: SizedBox(
                                      height: 50,
                                      width: 200,
                                      child: Center(child: Text('Product Name',style: TextStyle(fontWeight: FontWeight.bold),)))),
                                  TableCell(child: SizedBox(
                                      height: 50,
                                      width: 200,
                                      child: Center(child: Text('Price',style: TextStyle(fontWeight: FontWeight.bold),)))),
                                  TableCell(child: SizedBox(
                                      height: 50,
                                      width: 200,
                                      child: Center(child: Text('Quantity',style: TextStyle(fontWeight: FontWeight.bold),)))),
                                  TableCell(child: SizedBox(
                                      height: 50,
                                      width: 200,
                                      child: Center(child: Text('Action',style: TextStyle(fontWeight: FontWeight.bold),)))),
                                  TableCell(child: SizedBox(
                                      height: 50,
                                      width: 200,
                                      child: Center(child: Text('Total',style: TextStyle(fontWeight: FontWeight.bold),)))),
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
                                            width: 120,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Colors.black12
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 8.0,bottom: 8,left: 8),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(50),
                                                      color: Colors.white
                                                    ),
                                                    child: IconButton(
                                                      icon: Icon(Icons.remove),
                                                      onPressed: () {
                                                        if (product.quantity.value > 0) {
                                                          product.quantity.value--;
                                                        }
                                                      },
                                                    ),
                                                  ),
                                                ),
                                                Spacer(),
                                                Obx(() => Text('${product.quantity.value}')),
                                                Spacer(),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 8.0,bottom: 8,right: 8),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(50),
                                                        color: Colors.white
                                                    ),
                                                    child: IconButton(
                                                      icon: Icon(Icons.add),
                                                      onPressed: () {
                                                        product.quantity.value++;
                                                      },
                                                    ),
                                                  ),
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
                              _buildTotalRow(),
                              buildContainer(),


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



TableRow _buildTotalRow() {
  return TableRow(
    children: [
      _buildCell(''),
      _buildCell(''),
      _buildCell(''),
      _buildCell(''),
      _buildCell('Total', isHeader: true, colSpan: 3),
      _buildCell('\$${productController.grandTotal.toStringAsFixed(2)}',
          isHeader: true),
    ],
  );
}

TableRow buildContainer(){
  return TableRow(
    children: [
      _buildCell(''),
      _buildCell(''),
      _buildCell(''),
      _buildCell(''),
      SizedBox(
        height: 100,
        child: TableCell(child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.pink
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Continue shopping',style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        )),
      ),SizedBox(
        height: 100,
        child: TableCell(child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(5),
               color: Colors.green
             ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Check out',style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        )),
      ),
    ]
  );
}
Widget _buildCell(String text, {bool isHeader = false, int colSpan = 1}) {
  return TableCell(
    verticalAlignment: TableCellVerticalAlignment.middle,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
          color: isHeader ? Colors.white : Colors.black,
          fontSize: isHeader ? 16 : 14,
        ),
        textAlign: isHeader ? TextAlign.center : TextAlign.left,
      ),
    ),
  );
}