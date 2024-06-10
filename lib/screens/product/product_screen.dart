import 'package:buzz/model/product_model.dart';
import 'package:buzz/screens/product/product_controller.dart';
import 'package:buzz/screens/product/widget/product_widget.dart';
import 'package:buzz/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';


class ProductCard extends StatelessWidget {
  final Product product;
  final ProductController productController = Get.put(ProductController());

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Stack(
              alignment: Alignment.center,
              children: [

                Container(
                  width: double.infinity,
                  height: size.width < 600 ? 120 : 200,
                  child: Image.asset(
                    product.imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
                product.isLiked == true? Container(
                  width: double.infinity,
                  height: size.width < 600 ? 120 : 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black26,
                  ),
                ):SizedBox(),
                product.isLiked == true
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white),
                              child: Icon(Icons.remove_red_eye)),
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {
                              dialogImage(context);
                            },
                            child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                child: Icon(Icons.shopping_cart)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {
                             // controller.tap =!controller.tap;
                            },
                            child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                child: Icon(productController.tap
                                    ? Icons.favorite_border
                                    :Icons.favorite )),
                          ),
                        ],
                      )
                    : SizedBox(),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(5, (index) {
                      return Icon(
                        index < product.rating ? Icons.star : Icons.star_border,
                        size: size.width < 600 ? 16 : 20,
                      );
                    }),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    product.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.width < 600 ? 16 : 20,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    product.subName,
                    style: const TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width < 600 ? 14 : 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductPage extends StatefulWidget {
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf2f4f6),
      body: Obx(() {
        if (productController.productList.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }
        return InkWell(
          onTap: () {
            for(int i=0;i<productController.productList!.length;i++){
              setState(() {

                productController.productList![i].isLiked=false;

              });
            }
            setState(() {

            });


          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ResponsiveBuilder(
              builder: (context, sizingInformation) {
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

                return Column(
                  children: [
                    productTitle(),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        Text(
                          StringRes.showProduct,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Featured'),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        iconContainer(),
                        const SizedBox(
                          width: 15,
                        ),
                        textFiled(),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // Expanded(
                    //   child: Wrap(
                    //     direction: Axis.horizontal,
                    //     children: productController.productList
                    //         .map((element) => GestureDetector(
                    //               onTap: () {
                    //                 productController.toggleLike(productController
                    //                     .productList
                    //                     .indexOf(element));
                    //               },
                    //               child: ProductCard(
                    //                   product: productController.productList[
                    //                       productController.productList
                    //                           .indexOf(element)]),
                    //             ))
                    //         .toList(),
                    //   ),
                    // ),
                    Expanded(
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
                        itemCount: productController.productList.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              productController.toggleLike(index);

                            },
                            child: ProductCard(
                                product: productController.productList[index]),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        );
      }),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'product_controller.dart';
//
// class ProductPage extends StatelessWidget {
//   final ProductController productController = Get.put(ProductController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Product Card'),
//       ),
//       body: Center(
//         child: GestureDetector(
//           onTap: () {
//             productController.toggleIcons();
//             if (productController.showIcons.value) {
//               productController.startCountdown(86400); // Countdown for 24 hours
//             }
//           },
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               Image.network(
//                 'https://via.placeholder.com/150',
//                 fit: BoxFit.cover,
//               ),
//               Obx(() {
//                 return productController.showIcons.value
//                     ? Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(Icons.shopping_cart, color: Colors.white),
//                     SizedBox(width: 20),
//                     Icon(Icons.remove_red_eye, color: Colors.white),
//                     SizedBox(width: 20),
//                     GestureDetector(
//                       onTap: () {
//                         productController.toggleLike();
//                       },
//                       child: Icon(
//                         productController.isLiked.value
//                             ? Icons.favorite
//                             : Icons.favorite_border,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 )
//                     : Container();
//               }),
//               Positioned(
//                 bottom: 10,
//                 left: 10,
//                 child: Obx(() {
//                   return Row(
//                     children: [
//                       Icon(Icons.fireplace, color: Colors.purple),
//                       SizedBox(width: 5),
//                       Text('New', style: TextStyle(color: Colors.white)),
//                       SizedBox(width: 20),
//                       Icon(Icons.flash_on, color: Colors.orange),
//                       SizedBox(width: 5),
//                       Text(
//                         _formatDuration(Duration(seconds: productController.countdown.value)),
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ],
//                   );
//                 }),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   String _formatDuration(Duration duration) {
//     String twoDigits(int n) => n.toString().padLeft(2, '0');
//     String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
//     String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
//     return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
//   }
// }
