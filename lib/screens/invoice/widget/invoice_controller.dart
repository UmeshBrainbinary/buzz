import 'package:buzz/model/invoice_table_model.dart';
import 'package:get/get.dart';




class InvoiceController extends GetxController {
  var items = <Item>[
    Item(description: 'Lorem Ipsum\nLorem Ipsum is simply dummy text of the printing and typesetting industry.', hours: 5, rate: 75, subtotal: 375.00),
    Item(description: 'Lorem Ipsum\nLorem Ipsum is simply dummy text of the printing and typesetting industry.', hours: 3, rate: 75, subtotal: 225.00),
    Item(description: 'Lorem Ipsum\nLorem Ipsum is simply dummy text of the printing and typesetting industry.', hours: 10, rate: 75, subtotal: 750.00),
    Item(description: 'Lorem Ipsum\nLorem Ipsum is simply dummy text of the printing and typesetting industry.', hours: 10, rate: 75, subtotal: 750.00),
  ].obs;

  double get total => items.fold(0, (sum, item) => sum + item.subtotal);

  double get hst => total * 0.13;

  double get grandTotal => total + hst;
}
