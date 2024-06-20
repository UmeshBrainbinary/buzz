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
      GeneralData(image: AssetRes.tether, title: 'Ethereuam', tex: '+30%', price: '\$${7433}', color: ColorRes.lightPurple, textColor: ColorRes.darkPurple),
      GeneralData(image: AssetRes.bandProtocol, title: 'Doge Coin', tex: '+10%', price: '\$${2343}', color: Colors.green.withOpacity(.3), textColor: Colors.green),
    ];
    generalList.value = data;
  }

  final List<ChartDataLive> chartDataLive = [
    ChartDataLive(2010, 35),
    ChartDataLive(2011, 13),
    ChartDataLive(2012, 34),
    ChartDataLive(2013, 27),
    ChartDataLive(2014, 40),
  ];

  final List<ChartDataSale1> chartDataSale1 = [
    ChartDataSale1(2010, 40),
    ChartDataSale1(2011, 30),
    ChartDataSale1(2012, 45),
    ChartDataSale1(2013, 40),
    ChartDataSale1(2014, 45),
  ];

  List<SocialData> socialData = [
    SocialData(color: Colors.blueAccent, title: "Snapchat", centerText: "78%", circularValue: 0.78, followers: "12,098", image: AssetRes.snapchat, percent: "+22.9%"),
    SocialData(color: Colors.blueAccent, title: "Tumbler", centerText: "50%", circularValue: 0.5, followers: "12,564", image: AssetRes.tumbler, percent: "+14.09%"),
    SocialData(color: Colors.orangeAccent, title: "Twitter", centerText: "70%", circularValue: 0.7, followers: "15,080", image: AssetRes.twitterLogo, percent: "+27.4%"),
    SocialData(color: Colors.redAccent, title: "Facebook", centerText: "80%", circularValue: 0.8, followers: "68,954", image: AssetRes.snapchat, percent: "+22.9%"),
  ];
  
}

class ChartDataSale1 {
  ChartDataSale1(this.x, this.y);

  final int x;
  final double? y;
}

class ChartDataLive {
  ChartDataLive(this.x, this.y);

  final int x;
  final double? y;
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
