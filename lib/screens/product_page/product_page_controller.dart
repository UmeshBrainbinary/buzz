import 'package:buzz/model/product_model.dart';
import 'package:get/get.dart';

class ProductPageController extends GetxController {
  var productList = <Product>[].obs;
  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
  void toggleLike(int index) {
    var product = productList[index];
    product.isLiked = true;
    productList[index] = product; // Update the list to reflect the change
  }
  @override
  void onInit() {
    // TODO: implement onInit
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
