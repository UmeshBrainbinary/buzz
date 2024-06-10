import 'package:buzz/model/product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var productList = <Product>[].obs;
   Product? product;
bool _tap = false;


  bool get tap => _tap;

  set tap(bool value) {
    _tap = value;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() {
    var products = [
      Product(name: 'Woman T-shirt', imageUrl: 'assets/images/girls.png', price: 26.00, rating: 3.0,subName:'Denim jacket' ),
      Product(name: 'Woman T-shirt', imageUrl: 'assets/images/images.jpeg', price: 26.00, rating: 3.0,subName:'Denim jacket' ),
      Product(name: 'Woman T-shirt', imageUrl: 'assets/images/shoping.jpeg', price: 26.00, rating: 3.0,subName:'Denim jacket' ),
      Product(name: 'Woman T-shirt', imageUrl: 'assets/images/girls.png', price: 26.00, rating: 3.0,subName:'Denim jacket' ),
      Product(name: 'Woman T-shirt', imageUrl: 'assets/images/images.jpeg', price: 26.00, rating: 3.0,subName:'Denim jacket' ),
      Product(name: 'Woman T-shirt', imageUrl: 'assets/images/shoping.jpeg', price: 26.00, rating: 3.0,subName:'Denim jacket' ),
      Product(name: 'Woman T-shirt', imageUrl: 'assets/images/girls.png', price: 26.00, rating: 3.0,subName:'Denim jacket' ),
      Product(name: 'Woman T-shirt', imageUrl: 'assets/images/images.jpeg', price: 26.00, rating: 3.0,subName:'Denim jacket' ),

      // Add more products here
    ];

    productList.value = products;
  }
   final count = RxInt(1);

  void decrement() {
    if (count.value > 0) {
      count.value--;
    }
    update(['update']);
  }
  void increment() {
    if (count.value < 100) { // Optional: Set a maximum value
      count.value++;
    }
    update(['update']);
  }

  void toggleLike(int index) {
    var product = productList[index];
    product.isLiked = true;
    productList[index] = product; // Update the list to reflect the change
  }



}


// import 'package:get/get.dart';
//
// class ProductController extends GetxController {
//   var isLiked = false.obs;
//   var showIcons = false.obs;
//   var countdown = 0.obs;
//      final count = RxInt(1);
//
//   void decrement() {
//     if (count.value > 0) {
//       count.value--;
//     }
//     update(['update']);
//   }
//   void increment() {
//     if (count.value < 100) { // Optional: Set a maximum value
//       count.value++;
//     }
//     update(['update']);
//   }
//
//   void toggleLike() {
//     isLiked.value = !isLiked.value;
//   }
//
//   void toggleIcons() {
//     showIcons.value = !showIcons.value;
//   }
//
//   void startCountdown(int seconds) {
//     countdown.value = seconds;
//     if (countdown.value > 0) {
//       Future.delayed(Duration(seconds: 1), () {
//         countdown.value--;
//         if (countdown.value > 0) {
//           startCountdown(countdown.value);
//         }
//       });
//     }
//   }
// }
