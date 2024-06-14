import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final double? y;
}
class ChartDataArea {
  final String x;
  final double y;
  final Color color;

  ChartDataArea(this.x, this.y, this.color);
}

class ChartDataLive {
  ChartDataLive(this.x, this.y);
  final int x;
  final double? y;
}


class ChartController extends GetxController{

  final List<ChartDataArea> chartDataArea = [
    ChartDataArea('A', 20, Colors.blue),
    ChartDataArea('B', 30, Colors.red),
    ChartDataArea('C', 15, Colors.green),
    ChartDataArea('D', 25, Colors.orange),
    ChartDataArea('E', 10, Colors.purple),
  ];

  final List<ChartData> chartData = [
    ChartData(2010, 35),
    ChartData(2011, 13),
    ChartData(2012, 34),
    ChartData(2013, 27),
    ChartData(2014, 40)
  ];

  final List<ChartDataLive> chartDataLive = [
    ChartDataLive(2010, 35),
    ChartDataLive(2011, 13),
    ChartDataLive(2012, 34),
    ChartDataLive(2013, 27),
    ChartDataLive(2014, 40)
  ];

  final List<ChartData> chartData1 = [
    ChartData(2010,10),
    ChartData(2011, 25),
    ChartData(2012, 20),
    ChartData(2013, 44),
    ChartData(2014, 30)
  ];

}


