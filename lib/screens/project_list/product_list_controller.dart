import 'package:buzz/utils/Assets_res.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProductListController extends GetxController{

  TextEditingController searchController = TextEditingController();
  var selectedIndex = 0.obs;
  void changeIndex(int index) {
    selectedIndex.value = index;
  }
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  var productDataList= <ProductListData>[].obs;

  fetchProductData(){
    var data =[
      ProductListData(image: AssetRes.flutter, title: 'Flutter Dev'),
      ProductListData(image: AssetRes.java, title: 'Java Dev'),
      ProductListData(image: AssetRes.nodejs, title: 'Nodjs Dev'),
      ProductListData(image: AssetRes.dart, title: 'Dart Dev'),
    ];
    productDataList.value = data;
  }

}
class ProductListData{
  final String image;
  final String title;


  ProductListData({
    required this.image,
    required this.title,

  });

}