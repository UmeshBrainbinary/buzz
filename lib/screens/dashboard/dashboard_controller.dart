import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoardController extends GetxController{
  ExpansionTileController? expansionTileControllerCom;

  String   selectedMainCategory= 'Dashboards';

  bool isOpenWidgets= false;
  bool openWidget = false;
  bool selectUser = false;
  bool Menulevel = false;
  bool buttons = false;
  bool project = false;


  final List GENERAL = [
    'DashBoards',
    'product',
    'Widgets',
  ];

  final List APPLACATION = [


    'Projects',
    "E-Commerce",
    "Chat",
    'Users',
  ];
  final List FORMSTABlE = [

    "Forms",
    "Tables",
  ];
  final List COMPONTS = [
    "Auth Pages",
    'UI Kits',
    'Buttons',
  ];
  final List MISCELLANEOUS = [
    'FaQs'];

  final  iconTypesHome = <IconData>[
    Icons.home,
    Icons.dashboard_outlined,


  ];
  final  iconTypesApplication = <IconData>[

    Icons.check_circle_outline_rounded,
    Icons.burst_mode_rounded,
    Icons.chat,
    Icons.person,


  ];
  final  iconTypeFormTable = <IconData>[

    Icons.format_align_justify,
    Icons.table_chart_outlined,


  ];

  final  iconTypesComponent= <IconData>[

    Icons.security,
    Icons.build,
    Icons.alt_route_rounded,


  ];
  final  iconTypeMiscellaneous = <IconData>[

    Icons.question_answer_outlined,

  ];
  List componentBool = [
    false,
    true,
    false
  ];

  List applicationBool = [
    false,
    false,
    false,
    false,
  ];
bool isAdded = false;


  onComponentChange(index){
    applicationBool= List.generate(4, (index) => false);
    componentBool= List.generate(3, (index) => false);
    componentBool[index]= true;
// update(['allBool']);
print(componentBool);
  }



  RxInt currentIndex = 0.obs;
}