import 'package:buzz/model/product_model.dart';
import 'package:buzz/screens/product/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [],
        ),
        Card(
            color: Colors.white,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: size.width < 600 ? 120 : 200,
                    child: Image.network(
                      product.imageUrl,
                      fit: BoxFit.fill,
                    ),
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
                              index < product.rating
                                  ? Icons.star
                                  : Icons.star_border,
                              size: size.width < 600 ? 16 : 20,
                            );
                          }),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          product.name,
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: size.width < 600 ? 16 : 20,),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          product.subName,
                          style: TextStyle(color: Colors.grey, fontSize: 10),
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
                  )
                ],
              ),
            )),
      ],
    );
  }
}

class ProductPage extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() {
        if (productController.productList.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 0.7,
          ),
          itemCount: productController.productList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Handle tap event here
              },
              child: ProductCard(product: productController.productList[index]),
            );
          },
        );
      }),
    );
  }
}
