import 'package:buzz/model/product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var productList = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() {
    var products = [
      Product(name: 'Woman T-shirt', imageUrl: 'assets/images/girls.png', price: 26.00, rating: 3.0,subName:'Denim jacket' ),
      Product(name: 'Woman T-shirt', imageUrl: 'assets/images/girls.png', price: 26.00, rating: 3.0,subName:'Denim jacket' ),
      Product(name: 'Woman T-shirt', imageUrl: 'assets/images/girls.png', price: 26.00, rating: 3.0,subName:'Denim jacket' ),
      Product(name: 'Woman T-shirt', imageUrl: 'assets/images/girls.png', price: 26.00, rating: 3.0,subName:'Denim jacket' ),
      Product(name: 'Woman T-shirt', imageUrl: 'assets/images/girls.png', price: 26.00, rating: 3.0,subName:'Denim jacket' ),
      Product(name: 'Woman T-shirt', imageUrl: 'assets/images/girls.png', price: 26.00, rating: 3.0,subName:'Denim jacket' ),
      Product(name: 'Woman T-shirt', imageUrl: 'assets/images/girls.png', price: 26.00, rating: 3.0,subName:'Denim jacket' ),
      Product(name: 'Woman T-shirt', imageUrl: 'assets/images/girls.png', price: 26.00, rating: 3.0,subName:'Denim jacket' ),

      // Add more products here
    ];

    productList.value = products;
  }
}
