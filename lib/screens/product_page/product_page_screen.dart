import 'package:buzz/screens/product/product_screen.dart';
import 'package:buzz/screens/product_page/product_page_controller.dart';
import 'package:buzz/screens/product_page/widget/product_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProductPageScreen extends StatelessWidget {
  ProductPageScreen({super.key});
  final ProductPageController tabController = Get.put(ProductPageController());


  List color = [
    Colors.purple,
    Colors.greenAccent,
    Colors.pink,
    Colors.deepPurpleAccent
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (BuildContext context, SizingInformation sizingInformation) {
          int crossAxisCount;

          if (sizingInformation.deviceScreenType ==
              DeviceScreenType.mobile) {
            crossAxisCount = 2;
          } else if (sizingInformation.deviceScreenType ==
              DeviceScreenType.tablet) {
            crossAxisCount = 3;
          } else {
            // Desktop
            crossAxisCount = 4;
          }
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    productTitle(),
                    Row(
                      children: [
                        Card(
                          elevation: 2,
                          child: Container(
                            height: 320,
                            width:sizingInformation.deviceScreenType ==
                            DeviceScreenType.tablet? 100:
                            sizingInformation.deviceScreenType ==
                                DeviceScreenType.mobile?90:250,
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
                        if (sizingInformation.deviceScreenType ==
                            DeviceScreenType.desktop || sizingInformation.deviceScreenType ==
                            DeviceScreenType.tablet) Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Padding(
                                    padding:  EdgeInsets.only(
                                        left: 8.0, right:sizingInformation.deviceScreenType ==
                                        DeviceScreenType.tablet?50:
                                    sizingInformation.deviceScreenType ==
                                        DeviceScreenType.mobile?30:100, top: 10, bottom: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5,),
                                        Text(
                                          'Brand',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize:sizingInformation.deviceScreenType ==
                                                  DeviceScreenType.mobile?12: 18),
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
                                          style: TextStyle(color: Colors.grey,fontSize: sizingInformation.deviceScreenType ==
                                              DeviceScreenType.mobile?10 :
                                          sizingInformation.deviceScreenType ==
                                              DeviceScreenType.tablet?12:15,),
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

                                      buildPadding(
                                        icon: Icons.shopping_cart_sharp,
                                        size:  sizingInformation.deviceScreenType ==
                                            DeviceScreenType.mobile?15:20,
                                        fontSize: sizingInformation.deviceScreenType ==
                                            DeviceScreenType.mobile?7:
                                        sizingInformation.deviceScreenType ==
                                            DeviceScreenType.tablet?8:10,
                                        fontSizeText:sizingInformation.deviceScreenType ==
                                            DeviceScreenType.mobile?10:
                                        sizingInformation.deviceScreenType ==
                                            DeviceScreenType.tablet?12:18,
                                      ),
                                      SizedBox(height: 5,),
                                      buildPadding(
                                        icon: Icons.shopping_cart_sharp,
                                        size:  sizingInformation.deviceScreenType ==
                                            DeviceScreenType.mobile?15:20,
                                        fontSize: sizingInformation.deviceScreenType ==
                                            DeviceScreenType.mobile?7:
                                        sizingInformation.deviceScreenType ==
                                            DeviceScreenType.tablet?8:10,
                                        fontSizeText:sizingInformation.deviceScreenType ==
                                            DeviceScreenType.mobile?10:
                                        sizingInformation.deviceScreenType ==
                                            DeviceScreenType.tablet?12:18,
                                      ),
                                      SizedBox(height: 5,),
                                      buildPadding(
                                        icon: Icons.shopping_cart_sharp,
                                        size:  sizingInformation.deviceScreenType ==
                                            DeviceScreenType.mobile?15:20,
                                        fontSize: sizingInformation.deviceScreenType ==
                                            DeviceScreenType.mobile?7:
                                        sizingInformation.deviceScreenType ==
                                            DeviceScreenType.tablet?8:10,
                                        fontSizeText:sizingInformation.deviceScreenType ==
                                            DeviceScreenType.mobile?10:
                                        sizingInformation.deviceScreenType ==
                                            DeviceScreenType.tablet?12:18,
                                      ),
                                      SizedBox(height: 5,),
                                      buildPadding(
                                        icon: Icons.shopping_cart_sharp,
                                        size:  sizingInformation.deviceScreenType ==
                                            DeviceScreenType.mobile?15:20,
                                        fontSize: sizingInformation.deviceScreenType ==
                                            DeviceScreenType.mobile?7:
                                        sizingInformation.deviceScreenType ==
                                            DeviceScreenType.tablet?8:10,
                                        fontSizeText:sizingInformation.deviceScreenType ==
                                            DeviceScreenType.mobile?10:
                                        sizingInformation.deviceScreenType ==
                                            DeviceScreenType.tablet?12:18,
                                      ),
                                      SizedBox(height: 10,),
                
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ) else SizedBox(),
                      ],
                    ),
                    sizingInformation.deviceScreenType ==
                        DeviceScreenType.mobile?
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Padding(
                              padding:  EdgeInsets.only(
                                  left: 8.0, right:sizingInformation.deviceScreenType ==
                                  DeviceScreenType.tablet?50:
                              sizingInformation.deviceScreenType ==
                                  DeviceScreenType.mobile?30:100, top: 10, bottom: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 5,),
                                  Text(
                                    'Brand',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize:sizingInformation.deviceScreenType ==
                                            DeviceScreenType.mobile?12: 18),
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
                                    style: TextStyle(color: Colors.grey,fontSize: sizingInformation.deviceScreenType ==
                                        DeviceScreenType.mobile?10:15,),
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
                
                                buildPadding(
                                  icon: Icons.shopping_cart_sharp,
                                  size:  sizingInformation.deviceScreenType ==
                                      DeviceScreenType.mobile?15:20,
                                  fontSize: sizingInformation.deviceScreenType ==
                                      DeviceScreenType.mobile?7:10,
                                  fontSizeText:sizingInformation.deviceScreenType ==
                                      DeviceScreenType.mobile?10:18,
                                ),
                                SizedBox(height: 5,),
                                buildPadding(
                                  icon: Icons.shopping_cart_sharp,
                                  size:  sizingInformation.deviceScreenType ==
                                      DeviceScreenType.mobile?15:20,
                                  fontSize: sizingInformation.deviceScreenType ==
                                      DeviceScreenType.mobile?7:10,
                                  fontSizeText:sizingInformation.deviceScreenType ==
                                      DeviceScreenType.mobile?10:18,
                                ),
                                SizedBox(height: 5,),
                                buildPadding(
                                  icon: Icons.shopping_cart_sharp,
                                  size:  sizingInformation.deviceScreenType ==
                                      DeviceScreenType.mobile?15:20,
                                  fontSize: sizingInformation.deviceScreenType ==
                                      DeviceScreenType.mobile?7:10,
                                  fontSizeText:sizingInformation.deviceScreenType ==
                                      DeviceScreenType.mobile?10:18,
                                ),
                                SizedBox(height: 5,),
                                buildPadding(
                                  icon: Icons.shopping_cart_sharp,
                                  size:  sizingInformation.deviceScreenType ==
                                      DeviceScreenType.mobile?15:20,
                                  fontSize: sizingInformation.deviceScreenType ==
                                      DeviceScreenType.mobile?7:10,
                                  fontSizeText:sizingInformation.deviceScreenType ==
                                      DeviceScreenType.mobile?10:18,
                                ),
                                SizedBox(height: 10,),
                
                              ],
                            ),
                          ),
                        ),
                      ],
                    ): SizedBox(),
                    tabContainer(),
                    Container(
                      height: 600,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: crossAxisCount,
                          childAspectRatio: sizingInformation.deviceScreenType ==
                              DeviceScreenType.tablet
                              ? 0.3
                              : sizingInformation.deviceScreenType ==
                              DeviceScreenType.desktop
                              ? 0.5
                              : 0.7,
                        ),
                        itemCount: controller.productList.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              controller.toggleLike(index);
                            },
                            child: ProductCard(
                                product: controller.productList[index]),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Padding buildPadding({IconData? icon,double? size,double? fontSize,double? fontSizeText}) {
    return Padding(
        padding:
            const EdgeInsets.only(left: 8.0, top: 10,),
        child: Row(
          children: [
            Icon(
              icon,
              size: size,
              //Icons.shopping_cart_sharp,
              color: Colors.deepPurpleAccent,
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Free Shopping',style: TextStyle(fontSize: fontSizeText),),
                Text(
                  'Free shipping world wide',
                  style: TextStyle(fontSize: fontSize, color: Colors.grey),
                ),
              ],
            )
          ],
        )

    );
  }
}
