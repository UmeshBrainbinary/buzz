import 'package:buzz/screens/chart_module/chart_controller.dart';
import 'package:buzz/screens/chart_module/widgets/pie_chart_widget.dart';
import 'package:buzz/utils/string.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pie_chart/pie_chart.dart';
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
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 20, left: 30, right: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorRes.white,
              ),
              child: SfCartesianChart(
                  title: ChartTitle(
                      text: StringRes.liveProduct,
                      textStyle: TextStyle(fontWeight: FontWeight.bold)),
                  series: <CartesianSeries>[
                    SplineAreaSeries<ChartDataLive, int>(
                        dataSource: controller.chartDataLive,
                        xValueMapper: (ChartDataLive data, _) => data.x,
                        yValueMapper: (ChartDataLive data, _) => data.y),
                  ]),
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 170, right: 170, top: 30, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorRes.white,
              ),
              child: SfCircularChart(
                legend: const Legend(
                  padding: 10,
                  isResponsive: true,
                  isVisible: true,
                ),
                title: ChartTitle(
                    text: StringRes.skillStatus,
                    textStyle: TextStyle(fontWeight: FontWeight.bold)),
                series: <CircularSeries>[
                  RadialBarSeries<ChartDataArea, String>(
                      dataSource: controller.chartDataArea,
                      xValueMapper: (ChartDataArea data, _) => data.x,
                      yValueMapper: (ChartDataArea data, _) => data.y,
                      // Radius of the radial bar
                      radius: '100%'),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorRes.white,
              ),
              child: SfCartesianChart(
                margin: EdgeInsets.all(20),
                title: ChartTitle(
                    text: 'Cryptocurrency Prices',
                    textStyle: TextStyle(fontWeight: FontWeight.bold)),
                primaryXAxis: CategoryAxis(),
                primaryYAxis:
                    NumericAxis(minimum: 0, maximum: 50, interval: 10),
                series: [
                  SplineSeries<ChartDataPrice, String>(
                    dataSource: controller.data,
                    xValueMapper: (ChartDataPrice data, _) => data.month,
                    yValueMapper: (ChartDataPrice data, _) => data.bitcoinPrice,
                    name: 'Bitcoin',
                    color: Colors.blue,
                  ),
                  SplineSeries<ChartDataPrice, String>(
                    dataSource: controller.data,
                    xValueMapper: (ChartDataPrice data, _) => data.month,
                    yValueMapper: (ChartDataPrice data, _) =>
                        data.ethereumPrice,
                    name: 'Ethereum',
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              width: 450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorRes.white,
              ),
              child: SfCartesianChart(
                  title: ChartTitle(
                      text: 'Sales Performance',
                      textStyle: TextStyle(fontWeight: FontWeight.bold)),
                  margin: EdgeInsets.all(20),
                  legend: Legend(isVisible: true),
                  series: <CartesianSeries>[
                    LineSeries<ChartDataSale1, int>(
                      dataSource: controller.chartDataSale1,
                      xValueMapper: (ChartDataSale1 data, _) => data.x,
                      yValueMapper: (ChartDataSale1 data, _) => data.y,
                      name: 'Ethereum',
                      color: Colors.blueGrey,
                    ),
                    ColumnSeries<ChartDataLive, int>(
                      dataSource: controller.chartDataLive,
                      xValueMapper: (ChartDataLive data, _) => data.x,
                      yValueMapper: (ChartDataLive data, _) => data.y,
                      color: ColorRes.darkRed,
                    ),
                    AreaSeries<ChartDataSale, int>(
                      dataSource: controller.chartDataSale,
                      xValueMapper: (ChartDataSale data, _) => data.x,
                      yValueMapper: (ChartDataSale data, _) => data.y,
                      color: ColorRes.lightPurple,
                    ),
                  ]),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 400,
          child: BarChart(
            BarChartData(
              alignment: BarChartAlignment.spaceAround,
              maxY: 20,
              barTouchData: BarTouchData(enabled: false),
              titlesData: FlTitlesData(
                show: true,
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                   
                  )
                ),

            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              )
            ),
              ),
              borderData: FlBorderData(show: false),
              barGroups: controller.getBarGroups(),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                padding: EdgeInsets.only(left: 70, right: 70),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorRes.white,
                ),
                child: SfCircularChart(
                    title: ChartTitle(
                        text: 'Total Income',
                        textStyle: TextStyle(fontWeight: FontWeight.bold)),
                    annotations: [
                      CircularChartAnnotation(
                          widget: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('\$${75.5}k'),
                          Container(
                            height: 20,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: ColorRes.lightPerot),
                            child: Center(
                                child: Text(
                              '+10%',
                              style: TextStyle(color: Colors.green),
                            )),
                          )
                        ],
                      ))
                    ],
                    series: <CircularSeries>[
                      DoughnutSeries<ChartDataRound, String>(
                          dataSource: controller.chartDataRound,
                          xValueMapper: (ChartDataRound data, _) => data.x,
                          yValueMapper: (ChartDataRound data, _) => data.y,
                          // Corner style of doughnut segment
                          cornerStyle: CornerStyle.bothCurve)
                    ])),
            SizedBox(
              width: 20,
            ),
            Container(
                padding: EdgeInsets.only(left: 70, right: 70, bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorRes.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Overview Product',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    piechart(),
                  ],
                ))
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding:
                  EdgeInsets.only(right: 100, left: 100, top: 20, bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorRes.white,
              ),
              child: SfCircularChart(
                title: ChartTitle(
                    text: 'Monthly Report',
                    textStyle: TextStyle(fontWeight: FontWeight.bold)),
                series: <CircularSeries>[
                  RadialBarSeries<ChartDataArea, String>(
                    dataSource: controller.chartDataArea1,
                    xValueMapper: (ChartDataArea data, _) => data.x,
                    yValueMapper: (ChartDataArea data, _) => data.y,
                    // Corner style of radial bar segment
                    cornerStyle: CornerStyle.bothCurve,
                    radius: "100%",
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(right: 50, left: 50, top: 20, bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorRes.white,
              ),
              child: SfCartesianChart(
                title: ChartTitle(
                    text: 'Acquisition Channels',
                    textStyle: TextStyle(fontWeight: FontWeight.bold)),
                series: [
                  LineSeries<ChartDataSale1, int>(
                    dataSource: controller.chartDataSale1,
                    xValueMapper: (ChartDataSale1 data, _) => data.x,
                    yValueMapper: (ChartDataSale1 data, _) => data.y,
                    name: 'Ethereum',
                    color: Colors.blue,
                  ),
                  LineSeries<ChartDataSale1, int>(
                    dataSource: controller.chartDataSale2,
                    xValueMapper: (ChartDataSale1 data, _) => data.x,
                    yValueMapper: (ChartDataSale1 data, _) => data.y,
                    name: 'Ethereum',
                    color: Colors.orange,
                  ),
                ],
              ),
            )
          ],
        )
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
