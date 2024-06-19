import 'package:buzz/utils/Assets_res.dart';
import 'package:buzz/utils/Color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeneralController extends GetxController{
  var generalList = <GeneralData>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchDataGeneral();
  }

   fetchDataGeneral(){
    var data = [
      GeneralData(image: AssetRes.dolar, title: 'Bitcoin', tex: '+50%', price: '\$${2143}', color: ColorRes.lightOrange, textColor: ColorRes.darkOrange),
      GeneralData(image: AssetRes.dolar, title: 'Bitcoin', tex: '+50%', price: '\$${2143}', color: ColorRes.lightOrange, textColor: ColorRes.darkOrange),
      GeneralData(image: AssetRes.dolar, title: 'Bitcoin', tex: '+50%', price: '\$${2143}', color: ColorRes.lightOrange, textColor: ColorRes.darkOrange),
    ];
    generalList.value =data;
   }
}


class GeneralData{
  final String image;
  final String title;
  final String tex;
  final String price;
  // final String text;
  final Color color;
  final Color textColor;




  GeneralData({
    required this.image,
    required this.title,
    required this.tex,
    required this.price,
    // required this.text,
    required this.color,
    required this.textColor,


  });
}