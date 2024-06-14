import 'package:buzz/screens/chart_module/chart_controller.dart';
import 'package:buzz/utils/string.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../utils/Color.dart';
import '../../utils/Assets_res.dart';
import '../cart/widget/cart_widget.dart';
import 'widgets/navigation_widget.dart';
import 'widgets/title_widget.dart';

class ChartScreen extends StatelessWidget {
  ChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.background,
      appBar: TitleWidget(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NavigationWidget(),
              MarkerChart(),
            ],
          ),
        ),
      ),
    );
  }
}

class MarkerChart extends StatelessWidget {
  MarkerChart({super.key});

  ChartController controller = Get.put(ChartController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildContainer(
              text: StringRes.totalSale,
              color: ColorRes.lightPurple,
              borderColor: ColorRes.darkPurple,
              iconBorderColor: ColorRes.lightPurple,
            ),
            buildContainer(
              text: StringRes.totalProject,
              color: ColorRes.lightRed,
              borderColor: ColorRes.darkRed,
              iconBorderColor: ColorRes.lightRed,
            ),
            buildContainer(
              text: StringRes.totalSale,
              color: ColorRes.lightPurple,
              borderColor: ColorRes.darkPurple,
              iconBorderColor: ColorRes.lightPurple,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ColorRes.white,
          ),
          child: SfCartesianChart(
              title: const ChartTitle(
                  text: StringRes.monthlyHistory,
                  textStyle: TextStyle(fontWeight: FontWeight.bold)),
              series: <CartesianSeries>[
                SplineSeries<ChartData, int>(
                    dataSource: controller.chartData,
                    // Type of spline
                    splineType: SplineType.monotonic,
                    cardinalSplineTension: 0.9,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y),
                SplineSeries<ChartData, int>(
                    dataSource: controller.chartData1,
                    // Type of spline
                    splineType: SplineType.monotonic,
                    cardinalSplineTension: 0.9,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y),
              ]),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SfCartesianChart(
              title: ChartTitle(text: StringRes.liveProduct,textStyle: TextStyle(fontWeight: FontWeight.bold)),
                series: <CartesianSeries>[
                  SplineAreaSeries<ChartDataLive, int>(
                      dataSource: controller.chartDataLive,
                      xValueMapper: (ChartDataLive data, _) => data.x,
                      yValueMapper: (ChartDataLive data, _) => data.y
                  ),

                ]
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorRes.white,
              ),
              child: SfCircularChart(
                legend: Legend(
                  isVisible: true,
                  position: LegendPosition.right,
                ),
                title: ChartTitle(text: StringRes.skillStatus,textStyle: TextStyle(fontWeight: FontWeight.bold)),
                series: <CircularSeries>[
                  RadialBarSeries<ChartDataArea, String>(
                      dataSource: controller.chartDataArea,
                      xValueMapper: (ChartDataArea data, _) => data.x,
                      yValueMapper: (ChartDataArea data, _) => data.y,
                      // Radius of the radial bar
                      radius: '50%'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Container buildContainer(
      {Color? color,
      required Color borderColor,
      Color? iconBorderColor,
      required String text}) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorRes.white,
      ),
      child: SfCartesianChart(
        title: ChartTitle(
            text: text, textStyle: TextStyle(fontWeight: FontWeight.bold)),
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
            color: color,
            borderColor: borderColor,
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
        legend: Legend(
          isVisible: true,
          iconBorderColor: iconBorderColor,
        ),
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
