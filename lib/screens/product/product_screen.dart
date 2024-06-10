import 'package:buzz/model/product_model.dart';
import 'package:buzz/screens/product/product_controller.dart';
import 'package:buzz/screens/product/widget/product_widget.dart';
import 'package:buzz/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProductCard extends StatefulWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      child: Card(
        color: Colors.white,
        child: Container(
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: size.width < 600 ? 120 : 200,
                    child: Image.asset(
                      widget.product.imageUrl,
                      fit: BoxFit.fill,
                    ),
                  ),
                  widget.product.isLiked == true
                      ? Container(
                          width: double.infinity,
                          height: size.width < 600 ? 120 : 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black26,
                          ),
                        )
                      : const SizedBox(),
                  widget.product.isLiked == true
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                child: const Icon(Icons.remove_red_eye)),
                            const SizedBox(
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
                                  child: const Icon(Icons.shopping_cart)),
                            ),
                            const SizedBox(
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
                                      : Icons.favorite)),
                            ),
                          ],
                        )
                      : const SizedBox(),
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
                          index < widget.product.rating
                              ? Icons.star
                              : Icons.star_border,
                          size: size.width < 600 ? 16 : 20,
                        );
                      }),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.product.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width < 600 ? 16 : 20,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      widget.product.subName,
                      style: const TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      '\$${widget.product.price}',
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
            for (int i = 0; i < productController.productList!.length; i++) {
              setState(() {
                productController.productList![i].isLiked = false;
              });
            }
            setState(() {});
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

                return SingleChildScrollView(
                  child: Column(
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

                      Wrap(
                        direction: Axis.horizontal,
                        children: productController.productList
                            .map((element) => GestureDetector(
                                  onTap: () {
                                    productController.toggleLike(
                                        productController.productList
                                            .indexOf(element));
                                  },
                                  child: ProductCard(
                                      product: productController.productList[
                                          productController.productList
                                              .indexOf(element)]),
                                ))
                            .toList(),
                      ),
                      // Expanded(
                      //   child: GridView.builder(
                      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      //       crossAxisCount: crossAxisCount,
                      //       childAspectRatio: sizingInformation.deviceScreenType ==
                      //               DeviceScreenType.tablet
                      //           ? 0.3
                      //           : sizingInformation.deviceScreenType ==
                      //                   DeviceScreenType.desktop
                      //               ? 0.5
                      //               : 0.7,
                      //     ),
                      //     itemCount: productController.productList.length,
                      //     itemBuilder: (context, index) {
                      //       return GestureDetector(
                      //         onTap: () {
                      //           productController.toggleLike(index);
                      //
                      //         },
                      //         child: ProductCard(
                      //             product: productController.productList[index]),
                      //       );
                      //     },
                      //   ),
                      // ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      }),
    );
  }
}
