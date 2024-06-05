import 'package:buzz/screens/invoice/widget/invoice_controller.dart';
import 'package:buzz/screens/invoice/widget/invoice_widget.dart';
import 'package:buzz/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InvoiceScreen extends StatelessWidget {
   InvoiceScreen({super.key});
  InvoiceController controller = Get.put(InvoiceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
          
            children: [
              invoiceTitle(),
              Card(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Image(
                              image:  AssetImage(
                                'assets/images/buzz.png',
                              ),
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(width: 5,),
                            Text(StringRes.buzz,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            Spacer(),
                            Text(StringRes.invoice,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                          ],
                        ),
                        const SizedBox(height: 20,),
                        const Row(
                          children: [
                            Text(StringRes.lorem,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            Spacer(),
                            Text(StringRes.lorem,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                          ],
                        ),
                        const SizedBox(height: 8,),
                        const Row(
                          children: [
                            Text('2955,Lorem Ipsum',style: TextStyle(fontSize: 13),),
                            Spacer(),
                            Text('Lorem No : 29',style: TextStyle(fontSize: 13),)
                          ],
                        ),const Row(
                          children: [
                            Text('lorem@gmail.com',style: TextStyle(fontSize: 13),),
                            Spacer(),
                            Text('Date : 23/05/2025',style: TextStyle(fontSize: 13),)
                          ],
                        ),const Row(
                          children: [
                            Text('222-675-555',style: TextStyle(fontSize: 13),),
                            Spacer(),
                            Text('656-666-688',style: TextStyle(fontSize: 13),)
                          ],
                        ),
                        const SizedBox(height: 50,),
                        const Text(StringRes.billed,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        const SizedBox(height: 20,),
                        const Text(StringRes.lorem,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        const Text('Lorem No : 29',style: TextStyle(fontSize: 13),),
                        const Text('Date : 23/05/2025',style: TextStyle(fontSize: 13),),
                        const Text('656-666-688',style: TextStyle(fontSize: 13),),
          
                        tableInvoice(),
                        invoiceText(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
