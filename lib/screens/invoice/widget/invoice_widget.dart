import 'package:buzz/model/invoice_table_model.dart';
import 'package:buzz/screens/invoice/widget/invoice_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

InvoiceController controller = Get.find<InvoiceController>();

Widget invoiceTitle() {
  return const Row(
    children: [
      Text(
        'Invoice',
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      Spacer(),
      Icon(
        Icons.home,
        size: 18,
      ),
      SizedBox(
        width: 2,
      ),
      Text('/'),
      SizedBox(
        width: 2,
      ),
      Text('E-Commerce'),
      SizedBox(
        width: 2,
      ),
      Text('/'),
      SizedBox(
        width: 2,
      ),
      Text(
        'Invoice',
        style: TextStyle(color: Colors.blue),
      )
    ],
  );
}

Widget tableInvoice() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Obx(() {
      return Column(
        children: [
          Table(
            border: TableBorder.all(color: Colors.grey,width: 0.1),
            columnWidths: const {
              0: FlexColumnWidth(3),
              1: FlexColumnWidth(1),
              2: FlexColumnWidth(1),
              3: FlexColumnWidth(1),
            },
            children: [
              _buildHeaderRow(),
              for (var item in controller.items) _buildItemRow(item),
              _buildHstRow(),
              _buildTotalRow(),
            ],
          ),
        ],
      );
    }),
  );
}

TableRow _buildHeaderRow() {
  return TableRow(
    decoration: const BoxDecoration(color: Colors.blueAccent),
    children: [
      _buildCell('Item Description', isHeader: true),
      _buildCell('Hours', isHeader: true),
      _buildCell('Rate', isHeader: true),
      _buildCell('Sub-total', isHeader: true),
    ],
  );
}

TableRow _buildItemRow(Item item) {
  return TableRow(
    children: [
      _buildCell(item.description),
      _buildCell(item.hours.toString()),
      _buildCell('\$${item.rate}'),
      _buildCell('\$${item.subtotal.toStringAsFixed(2)}'),
    ],
  );
}

TableRow _buildHstRow() {
  return TableRow(
    children: [
      _buildCell(''),
      _buildCell('HST'),
      _buildCell('13%', colSpan: 2),
      _buildCell('\$${controller.hst.toStringAsFixed(2)}'),
    ],
  );
}

TableRow _buildTotalRow() {
  return TableRow(
    children: [
      _buildCell(''),
      _buildCell(''),
      _buildCell('Total', isHeader: true, colSpan: 3),
      _buildCell('\$${controller.grandTotal.toStringAsFixed(2)}',
          isHeader: true),
    ],
  );
}

Widget _buildCell(String text, {bool isHeader = false, int colSpan = 1}) {
  return TableCell(
    verticalAlignment: TableCellVerticalAlignment.middle,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
          color: isHeader ? Colors.white : Colors.black,
          fontSize: isHeader ? 16 : 14,
        ),
        textAlign: isHeader ? TextAlign.center : TextAlign.left,
      ),
    ),
  );
}

Widget invoiceText() {
  return ResponsiveBuilder(
    builder: (BuildContext context, SizingInformation sizingInformation) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Thank you for your business!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: sizingInformation.deviceScreenType ==
                            DeviceScreenType.mobile
                        ? 12
                        : 16),
              ),
              const SizedBox(
                width: 5,
              ),
              sizingInformation.deviceScreenType ==
                      DeviceScreenType
                          .desktop /*sizingInformation.deviceScreenType ==
                  DeviceScreenType.tablet*/
                  ? Text(
                      'Payment is expected within 31 day; please process this invoice within that time.',
                      style: TextStyle(
                          fontSize: sizingInformation.deviceScreenType ==
                                  DeviceScreenType.mobile
                              ? 10
                              : 14),
                    )
                  : const SizedBox(),
              const Spacer(),
              container(
                text: 'Check Out',
                color: Colors.yellow,
              )
            ],
          ),
          sizingInformation.deviceScreenType == DeviceScreenType.mobile ||
                  sizingInformation.deviceScreenType == DeviceScreenType.tablet
              ? Text(
                  'Payment is expected within 31 day; please process this invoice within that time.',
                  style: TextStyle(
                      fontSize: sizingInformation.deviceScreenType ==
                              DeviceScreenType.mobile
                          ? 10
                          : 16),
                )
              : const SizedBox(),
          const Text('There will be a 5% interest change  per month on lat invoice'),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              container(text: 'Print',color: Colors.deepPurpleAccent,colors: Colors.white),
              container(text: 'Cancel',color: Colors.pink,colors: Colors.white),
            ],
          ),
          const SizedBox(height: 20,),
        ],
      );
    },
  );
}

Container container({Color? color,required  String text,Color? colors}) {
  return Container(
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color:color ,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8),
                child: Center(child: Text(text,style: TextStyle(color:colors ),)),
              ),
            );
}
