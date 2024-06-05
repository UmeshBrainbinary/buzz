
import 'package:get/get.dart';
class Product {
  String image;
  String name;
  double price;
  RxInt quantity;
  int total;

  Product({required this.image, required this.name, required this.price, required this.quantity,required this.total});
}

class CardController extends GetxController {
  var products = <Product>[
    Product(image: 'assets/images/shoes.webp', name: 'Jorden Shoes', price: 21, quantity: 0.obs,total: 12456),
    Product(image: 'assets/images/shoes.webp', name: 'Fancy Shoes', price: 50, quantity: 0.obs,total: 15456),
    Product(image: 'assets/images/shoes.webp', name: 'Man Shoes', price: 11, quantity: 0.obs,total: 15456),
    Product(image: 'assets/images/shoes.webp', name: 'Sport Shoes', price: 16, quantity: 0.obs,total: 16453),
  ].obs;
  double get total => products.fold(0, (sum, item) => sum + item.total);

  double get hst => total * 0.13;

  double get grandTotal => total + hst;
}
