import 'package:buzz/utils/Assets_res.dart';
import 'package:buzz/utils/Color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeneralController extends GetxController {
  var generalList = <GeneralData>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchDataGeneral();
  }

  fetchDataGeneral() {
    var data = [
      GeneralData(image: AssetRes.bitcoin, title: 'Bitcoin', tex: '+50%', price: '\$${2143}', color: ColorRes.lightOrange, textColor: ColorRes.darkOrange),
      GeneralData(image: AssetRes.tether, title: 'Ethereuam', tex: '+30%', price: '\$${7433}', color: ColorRes.lightOrange, textColor: ColorRes.darkOrange),
      GeneralData(image: AssetRes.bandProtocol, title: 'Doge Coin', tex: '+10%', price: '\$${2343}', color: ColorRes.lightOrange, textColor: ColorRes.darkOrange),
    ];
    generalList.value = data;
  }
  
  List<SocialData> socialData = [
    SocialData(color: Colors.blueAccent, title: "Snapchat", centerText: "78%", circularValue: 0.78, followers: "12,098", image: AssetRes.snapchat, percent: "+22.9%"),
    SocialData(color: Colors.blueAccent, title: "Tumbler", centerText: "50%", circularValue: 0.5, followers: "12,564", image: AssetRes.tumbler, percent: "+14.09%"),
    SocialData(color: Colors.orangeAccent, title: "Twitter", centerText: "70%", circularValue: 0.7, followers: "15,080", image: AssetRes.twitterLogo, percent: "+27.4%"),
    SocialData(color: Colors.redAccent, title: "Facebook", centerText: "80%", circularValue: 0.8, followers: "68,954", image: AssetRes.snapchat, percent: "+22.9%"),
  ];
  
}

class GeneralData {
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

class SocialData {
  final String image;
  final String title;
  final String percent;
  final String followers;
  final double circularValue;
  final String centerText;
  final Color color;

  SocialData({
    required this.color,
    required this.title,
    required this.centerText,
    required this.circularValue,
    required this.followers,
    required this.image,
    required this.percent,
  });
}
