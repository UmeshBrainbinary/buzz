import 'package:buzz/utils/Assets_res.dart';
import 'package:buzz/utils/Color.dart';
import 'package:buzz/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController cardNumber = TextEditingController();
  TextEditingController cardName = TextEditingController();
  TextEditingController number = TextEditingController();

  var dropdownValue = 'january'.obs;
  var items = [
    'january',
    'february',
    'march',
    'april',
    'may',
    'june',
    'july',
    'august',
    'september',
    'october',
    'november',
    'december',
  ].obs;

  var itemsYear = [
    '2024',
    '2023',
    '2022',
    '2021',
    '2020',
    '2019',
    '2018',
    '2017',
    '2016',
    '2015',
    '2014',
    '2013',
    '2012',
    '2011',
    '2010',
    '2009',
    '2008',
  ].obs;
  var dropdownValueYear = '2012'.obs;
  void dropdownChangeYear(newValue) {
    dropdownValueYear.value = newValue;
    update();
  }

  void dropdownOnChange(newValue) {
    dropdownValue.value = newValue;
    update();
  }
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }
  List<Map> data = [
    {
      'image': AssetRes.india,
      'title': StringRes.india,
      'rate': '50%',
    },{
      'image': AssetRes.argentines,
      'title': StringRes.argentines,
      'rate': '20%',
    },{
      'image': AssetRes.brazil,
      'title': StringRes.brazil,
      'rate': '10%',
    },{
      'image': AssetRes.germany,
      'title': StringRes.germany,
      'rate': '9%',
    },{
      'image': AssetRes.united,
      'title': StringRes.united,
      'rate': '5%',
    },
  ];

  List<Map> activity =[
    {
      'image' :AssetRes.figma,
      'title' : 'Figma',
      'sub' : 'Subscription',
      'rate' : '\$${1001}',
      'date' : '29/01/2023',
    },{
      'image' :AssetRes.creative,
      'title' : 'Adobe-\nCreative',
      'sub' : 'Subscription',
      'rate' : '\$${143}',
      'date' : '19/01/2023',
    },{
      'image' :AssetRes.starbucks,
      'title' : 'Starbucks',
      'sub' : 'Subscription',
      'rate' : '\$${213}',
      'date' : '1/01/2023',
    },{
      'image' :AssetRes.apple,
      'title' : 'Apple',
      'sub' : 'Transfer',
      'rate' : '\$${343}',
      'date' : '4/01/2023',
    },{
      'image' :AssetRes.facebook,
      'title' : 'Facebook',
      'sub' : 'Receive',
      'rate' : '\$${123}',
      'date' : '9/01/2023',
    },
  ];
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchData();
    fetchDataWrap();
  }

 var totalDefault = <DefaultData>[].obs;
  var wrapDataList = <WrapData>[].obs;
  fetchData(){
    var data = [
      DefaultData(title: StringRes.earning, price: '\$${1222}', tex: '12%', backColor: Colors.blue.shade100, color: ColorRes.blue,value: 0.3,colorText: ColorRes.blue),
      DefaultData(title: StringRes.sale, price: '\$${4451}', tex: '20.2%', backColor: ColorRes.lightOrange, color: ColorRes.darkOrange,value:0.5,colorText: ColorRes.darkOrange),
      DefaultData(title: StringRes.profit, price: '\$${7136}', tex: '15.6%', backColor: ColorRes.lightPerot, color: ColorRes.darkPerot,value: 0.9,colorText:ColorRes.darkPerot),
      DefaultData(title: StringRes.orders, price: '\$${9233}', tex: '39.3%', backColor: ColorRes.lightBlue, color: ColorRes.blue,value: 0.1,colorText: ColorRes.blue),
    ];
    totalDefault.value = data;

  }

  fetchDataWrap(){
    var wrapData= [
      WrapData(title: StringRes.totalEarning, price: '\$${29955}', tex: '9.55%', color: ColorRes.lightBlue, imageColor: ColorRes.blue, image: AssetRes.dolar),
      WrapData(title:  StringRes.customer, price:  '\$${19235}', tex: '2.29%', color: ColorRes.lightPink, imageColor: ColorRes.darkPink, image: AssetRes.user),
      WrapData(title: StringRes.order, price: '\$${9955}', tex: '9.23%', color:  ColorRes.lightOrange, imageColor: ColorRes.darkOrange, image: AssetRes.box),
      WrapData(title: StringRes.availableBalance, price: '\$${95295}', tex: '5.33%', color:  ColorRes.lightPurple, imageColor: ColorRes.darkPurple, image:  AssetRes.wallet),
      WrapData(title: StringRes.totalEarning, price:  '\$${29955}', tex: '9.55%', color: ColorRes.lightPerot, imageColor: ColorRes.darkPerot, image: AssetRes.rate),
      WrapData(title:  StringRes.customer, price:  '\$${19235}', tex: '2.29%', color: ColorRes.lightBlue, imageColor:  ColorRes.blue, image: AssetRes.users),
      WrapData(title: StringRes.order, price: '\$${9955}', tex: '9.23%', color: ColorRes.lightOrange, imageColor: ColorRes.darkOrange, image: AssetRes.file),
      WrapData(title: StringRes.availableBalance, price: '\$${95295}', tex: '5.33%', color:  ColorRes.lightBlue, imageColor: ColorRes.blue, image:  AssetRes.chart)

    ];
    wrapDataList.value = wrapData;
  }
}
class DefaultData{
  final String title;
  final String price;
  final String tex;
  final Color backColor;
  final Color color;
  final Color colorText;
  final double value;


  DefaultData({
    required this.title,
    required this.price,
    required this.tex,
    required this.backColor,
    required this.color,
    required this.colorText,
    required this.value,
  });
}

class WrapData{

  final String title;
  final String price;
  final String tex;
  final Color color;
  final Color imageColor;
  final String image;


  WrapData({
    required this.title,
    required this.price,
    required this.tex,
    required this.color,
    required this.imageColor,
    required this.image,
  });
}