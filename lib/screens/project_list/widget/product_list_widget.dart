import 'package:buzz/screens/project_list/product_list_controller.dart';
import 'package:buzz/utils/Color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

ProductListController productListController = Get.find<ProductListController>();

Widget tabContainerList(){
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Obx(() {
      return Row(
        children: [
          _buildTabItemList('View all', 0),
          SizedBox(width: 10,),
          _buildTabItemList('Doing', 1),
          SizedBox(width: 10,),
          _buildTabItemList('Done', 2),
        ],
      );
    }),
  );

}


Widget _buildTabItemList(String title, int index) {
  return GestureDetector(
    onTap: () {
      productListController.changeIndex(index);
    },
    child: Container(
      height: 40,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color:productListController.selectedIndex.value == index
              ? Colors.blue
              : ColorRes.textcolor,
        )
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(


            color:productListController.selectedIndex.value == index
                  ? Colors.blue
                  : Colors.black,
            fontWeight: productListController.selectedIndex.value == index
                ? FontWeight.bold
                : FontWeight.normal,
          ),
        ),
      ),
    ),
  );
}