import 'package:fl_chart/fl_chart.dart';
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

class ChartDataSale {
  ChartDataSale(this.x, this.y);

  final int x;
  final double? y;
}

class ChartDataSale1 {
  ChartDataSale1(this.x, this.y);

  final int x;
  final double? y;
}

class ChartController extends GetxController {
  final List<ChartDataRound> chartDataRound = [
    ChartDataRound('David', 25, Color.fromRGBO(9, 0, 136, 1)),
    ChartDataRound('Steve', 38, Color.fromRGBO(147, 0, 119, 1)),
    ChartDataRound('Jack', 34, Color.fromRGBO(228, 0, 124, 1)),
    ChartDataRound('Others', 52, Color.fromRGBO(255, 189, 57, 1))
  ];

  final List<ChartDataArea> chartDataArea = [
    ChartDataArea('A', 20, Colors.blue),
    ChartDataArea('B', 30, Colors.red),
    ChartDataArea('C', 15, Colors.green),
    ChartDataArea('D', 25, Colors.orange),
    ChartDataArea('E', 10, Colors.purple),
  ];
  final List<ChartDataArea> chartDataArea1 = [
    ChartDataArea('A', 100, Colors.blue),
    ChartDataArea('B', 400, Colors.red),
    ChartDataArea('C', 550, Colors.green),
    ChartDataArea('D', 680, Colors.orange),
    ChartDataArea('E', 700, Colors.purple),
    ChartDataArea('A', 800, Colors.blue),
  ];
  final dataMap = <String, double>{
    "Flutter": 5,
    "React": 3,
    "Xamarin": 2,
    "Ionic": 2,
  };

  final legendLabels = <String, String>{
    "Flutter": "Flutter legend",
    "React": "React legend",
    "Xamarin": "Xamarin legend",
    "Ionic": "Ionic legend",
  };

  final colorList = <Color>[
    const Color(0xfffdcb6e),
    const Color(0xff0984e3),
    const Color(0xfffd79a8),
    const Color(0xffe17055),
    const Color(0xff6c5ce7),
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
    ChartDataLive(2014, 40),
  ];
  final List<ChartDataSale> chartDataSale = [
    ChartDataSale(2010, 20),
    ChartDataSale(2011, 10),
    ChartDataSale(2012, 25),
    ChartDataSale(2013, 30),
    ChartDataSale(2014, 40),
  ];
  final List<ChartDataSale1> chartDataSale1 = [
    ChartDataSale1(2010, 40),
    ChartDataSale1(2011, 30),
    ChartDataSale1(2012, 45),
    ChartDataSale1(2013, 40),
    ChartDataSale1(2014, 45),
  ];
  final List<ChartDataSale1> chartDataSale2 = [
    ChartDataSale1(2010, 30),
    ChartDataSale1(2011, 40),
    ChartDataSale1(2012, 40),
    ChartDataSale1(2013, 45),
    ChartDataSale1(2014, 40),
  ];

  final List<ChartData> chartData1 = [
    ChartData(2010, 10),
    ChartData(2011, 25),
    ChartData(2012, 20),
    ChartData(2013, 44),
    ChartData(2014, 30)
  ];
  List<ChartDataPrice> data = [
    ChartDataPrice('Jan', 35, 20),
    ChartDataPrice('Feb', 28, 18),
    ChartDataPrice('Mar', 34, 22),
    ChartDataPrice('Apr', 32, 20),
    ChartDataPrice('May', 40, 30),
  ];

  List<BarChartGroupData> getBarGroups() {
    return List.generate(12, (i) {
      switch (i) {
        case 0:
          return makeGroupData(i, 5, 6.5, 8);
        case 1:
          return makeGroupData(i, 6, 8.5, 9);
        case 2:
          return makeGroupData(i, 7, 7.5, 10);
        case 3:
          return makeGroupData(i, 8, 9.5, 12);
        case 4:
          return makeGroupData(i, 9, 10.5, 11);
        case 5:
          return makeGroupData(i, 11, 8.5, 10);
        case 6:
          return makeGroupData(i, 6.5, 7, 8.5);
        case 7:
          return makeGroupData(i, 7.5, 8, 9.5);
        case 8:
          return makeGroupData(i, 6, 7.5, 8.5);
        case 9:
          return makeGroupData(i, 6.5, 8.5, 9);
        case 10:
          return makeGroupData(i, 7, 9.5, 10);
        case 11:
          return makeGroupData(i, 8, 9.5, 11);
        default:
          return makeGroupData(0, 0, 0, 0);
      }
    });
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2, double y3) {
    return BarChartGroupData(
      barsSpace: 4,
      x: x,
      barRods: [
        BarChartRodData(

          color: Colors.blue,
          width: 7, toY: y1,
        ),
        BarChartRodData(
          toY: y2,
          color: Colors.red,
          width: 7,
        ),
        BarChartRodData(
          toY: y3,
          color: Colors.orange,
          width: 7,
        ),
      ],
    );
  }
}

class ChartDataPrice {
  ChartDataPrice(this.month, this.bitcoinPrice, this.ethereumPrice);

  final String month;
  final double bitcoinPrice;
  final double ethereumPrice;
}

class ChartDataRound {
  ChartDataRound(this.x, this.y, this.color);

  final String x;
  final double y;
  final Color color;
}

