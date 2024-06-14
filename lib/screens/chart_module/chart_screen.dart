import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../utils/Color.dart';
import '../../utils/Assets_res.dart';
import '../cart/widget/cart_widget.dart';
import 'widgets/navigation_widget.dart';
import 'widgets/title_widget.dart';

class Chartscreen extends StatelessWidget {
  const Chartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleWidget(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NavigationWidget(),
              Row(
                children: [
                  MarkerChart(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MarkerChart extends StatelessWidget {
  const MarkerChart({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorRes.white,
      ),
      child: Row(
        children: [
          SfCartesianChart(
            primaryXAxis: const CategoryAxis(),
            series: <CartesianSeries>[
              AreaSeries<SalesData, String>(
                name: "Sales",
                dataSource: [
                  SalesData('Jan', 35),
                  SalesData('Feb', 28),
                  SalesData('Mar', 34),
                  SalesData('Apr', 32),
                  SalesData('May', 40),
                  SalesData('Jun', 28),
                  SalesData('July', 32),
                ],
                color: ColorRes.lightPurple,
                borderColor: ColorRes.darkPurple,
                xValueMapper: (SalesData sales, _) => sales.year,
                yValueMapper: (SalesData sales, _) => sales.sales,
                markerSettings: const MarkerSettings(
                  isVisible: true,
                  shape: DataMarkerType.circle,
                ),
              ),
            ],
            tooltipBehavior: TooltipBehavior(
              enable: true,
            ),
            legend: Legend(isVisible: true,iconBorderColor: Colors.red),
          ),
          // SfCircularChart(
          //     title: ChartTitle(text: 'Orders Status'),
          //     legend: Legend(isVisible: true),
          //     // tooltipBehavior:
          //     //     TooltipBehavior(enable: true, format: 'point.x : point.y%'),
          //     series: <CircularSeries>[
          //       // Render pie chart
          //       PieSeries<OrderInfo, String>(
          //           explode: true,
          //           explodeIndex: 1,
          //           radius: '55%',
          //           dataLabelSettings: DataLabelSettings(
          //               isVisible: true,
          //               labelIntersectAction: LabelIntersectAction.shift,
          //               overflowMode: OverflowMode.shift,
          //               showZeroValue: true,
          //               labelPosition: ChartDataLabelPosition.inside,
          //               connectorLineSettings:
          //               ConnectorLineSettings(type: ConnectorType.curve)
          //           ),
          //           dataSource: [
          //             OrderInfo(title: "nike 584", numOfOrders: 50, color: Colors.purple),
          //             OrderInfo(title: "adidas 584", numOfOrders: 30, color: Colors.deepOrange),
          //             OrderInfo(title: "puma asdasd ", numOfOrders: 10, color: Colors.amber),
          //             OrderInfo(
          //                 title: "rebook running shoes",
          //                 numOfOrders: 7,
          //                 color: Colors.blue.shade900),
          //             OrderInfo(
          //                 title: "adias x 19  football shoes",
          //                 numOfOrders: 3,
          //                 color: Colors.redAccent),
          //           ],
          //           pointColorMapper: (OrderInfo data, _) => data.color,
          //           dataLabelMapper: (OrderInfo data, _) =>
          //           data.title.toString() +
          //               "\n" +
          //               data.percentage.toString() +
          //               "%",
          //           xValueMapper: (OrderInfo data, _) => data.title,
          //           yValueMapper: (OrderInfo data, _) => data.percentage)
          //     ]),
        ],
      ),
    );
  }
}

class SalesData {
  final String year;
  final double sales;

  SalesData(this.year, this.sales);
}


class OrderInfo {
  final String? svgSrc, title;
  final int? numOfOrders;
  final Color? color;
  final int? percentage;
  int? orderId;

  OrderInfo({
    this.svgSrc,
    this.title,
    // this.totalStorage,
    this.numOfOrders,
    this.percentage,
    this.color,
  });
}