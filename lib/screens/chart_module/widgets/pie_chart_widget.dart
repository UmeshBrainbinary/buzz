import 'package:buzz/screens/chart_module/chart_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pie_chart/pie_chart.dart';
ChartController controller = Get.find();
Widget piechart(){
  return   PieChart(
    dataMap: controller.dataMap,
    animationDuration: Duration(milliseconds: 800),
    chartRadius: 200,
    colorList: controller.colorList,
    initialAngleInDegree: 0,
    chartType: ChartType.disc,
    ringStrokeWidth: 32,
    legendOptions: LegendOptions(showLegends: false),
    chartValuesOptions: ChartValuesOptions(
      showChartValueBackground: true,
      showChartValues: true,
      showChartValuesInPercentage: false,
      showChartValuesOutside: false,
      decimalPlaces: 1,
    ),
    // gradientList: ---To add gradient colors---
    // emptyColorGradient: ---Empty Color gradient---
  );
}