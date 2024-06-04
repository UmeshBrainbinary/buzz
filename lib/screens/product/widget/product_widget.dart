import 'package:buzz/screens/product/product_controller.dart';
import 'package:buzz/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';


Widget iconContainer() {
  return Container(
    height: 40,
    width: 150,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.white),
    child: const Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.dashboard_outlined,
            size: 18,
          ),
          Icon(
            Icons.menu_open_sharp,
            size: 18,
          ),
          Icon(
            Icons.menu_rounded,
            color: Colors.blue,
            size: 18,
          ),
          Icon(
            Icons.menu_rounded,
            color: Colors.blue,
            size: 18,
          ),
          Icon(
            Icons.menu_rounded,
            color: Colors.blue,
            size: 18,
          ),
        ],
      ),
    ),
  );
}

Widget textFiled() {
  return Expanded(
      child: SizedBox(
    height: 40,
    child: TextField(
      decoration: InputDecoration(
          suffixIcon: const Icon(Icons.search),
          hintText: StringRes.search,
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          )),
    ),
  ));
}

Widget productTitle() {
  return const Row(
    children: [
      Text(
        'Product',
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
      Text('E-Commers'),
      SizedBox(
        width: 2,
      ),
      Text('/'),
      SizedBox(
        width: 2,
      ),
      Text(
        'Product',
        style: TextStyle(color: Colors.blue),
      )
    ],
  );
}

Future dialogImage(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return ResponsiveBuilder(
        builder: (BuildContext context, SizingInformation sizingInformation) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: sizingInformation.deviceScreenType ==
                        DeviceScreenType.mobile
                    ? 410
                    : 550,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                        height: sizingInformation.deviceScreenType ==
                            DeviceScreenType.mobile? 200:300,
                        width: sizingInformation.deviceScreenType ==
                            DeviceScreenType.mobile?100:200,
                        child: Image.asset('assets/images/girls.png',fit: BoxFit.fill,),),
                    const SizedBox(
                      width: 20,
                    ),
                    Stack(
                      children: [
                         Positioned(
                          top: 10,
                            right: 5,
                            child: GestureDetector(
                                onTap: () {
                                  Get.back();
                                },
                                child: Icon(Icons.clear))),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 50,),
                            const Text('VOKATI'),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              '\$${56}',
                              style: TextStyle(color: Colors.deepPurpleAccent),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 1,
                              width: sizingInformation.deviceScreenType ==
                                      DeviceScreenType.mobile
                                  ? 280
                                  : 300,
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Product Details',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'nvfgesveisfdkgnbfibm ibx,n f,bkn fovibj \njfciewufjcewfjvcnin ',
                              style: TextStyle(color: Colors.grey),
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 1,
                              width: sizingInformation.deviceScreenType ==
                                      DeviceScreenType.mobile
                                  ? 280
                                  : 300,
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                container(
                                  text: 'M'
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                container(
                                  text: 'L'
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                container(
                                  text: 'XL'
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Quantity',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            GetBuilder<ProductController>(
                              id: 'update',
                              builder: ( controller) {
                                return Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        controller.decrement();
                                      },
                                      child: container(

                                          text: '-',
                                          color: Colors.grey,
                                          colors: Colors.white
                                      ),
                                    ),
                                    container(
                                      text: controller.count.value.toString(),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        controller.increment();
                                      },
                                      child: container(
                                          text: '+',
                                          color: Colors.grey,
                                          colors: Colors.white
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                buttonContainer(
                                  text: 'Add to cart'
                                ),
                                const SizedBox(width: 10,),
                                buttonContainer(
                                  text: 'View Details'
                                ),
                              ],
                            ),
                            SizedBox(height: 20,),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      );
    },
  );
}

Container buttonContainer({required String text}) {
  return Container(
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.deepPurpleAccent
                        ),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.only(left: 8.0,right: 8),
                          child: Text(text,style: const TextStyle(color: Colors.white),),
                        )),
                      );
}

Widget container({required String text, Color? color,Color? colors}) {
  return GestureDetector(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        border: Border.all(color: Colors.grey),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10.0,
          right: 10,
        ),
        child: Text(text,style: TextStyle(color:colors ),),
      ),
    ),
  );
}


