import 'package:buzz/screens/general/general_controller.dart';
import 'package:buzz/screens/general/widget/general_widget.dart';
import 'package:buzz/screens/general/widget/order_widget.dart';
import 'package:buzz/screens/general/widget/social_widget.dart';
import 'package:buzz/utils/Assets_res.dart';
import 'package:buzz/utils/Color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GeneralScreen extends StatelessWidget {
  GeneralScreen({super.key});

  final GeneralController generalController = Get.put(GeneralController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Wrap(
                children: [
                  Text('General'),
                ],
              ),
            ),
            Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 20),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    direction: Axis.horizontal,
                    children: generalController.generalList.map((element) => GeneralDataValue(generalData: element)).toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 20),
                  child: Container(
                    width: 350,
                    padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Today sale",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "67,798",
                                style: TextStyle(
                                  color: Colors.deepPurpleAccent,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "+5.7%",
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "The point of the Using Lorem Ipsum",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 30),
                        CircularPercentIndicator(
                          percent: 0.7,
                          animationDuration: 1000,
                          center: const Text(
                            "70%",
                            style: TextStyle(fontSize: 12),
                          ),
                          animation: true,
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.deepPurpleAccent,
                          backgroundColor: Colors.grey.shade400,
                          radius: 40,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 350,
                    padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Today Profit",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "98.1%",
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "2.7%",
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "The point of the Using Lorem Ipsum",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 30),
                        CircularPercentIndicator(
                          percent: 0.6,
                          animationDuration: 1000,
                          center: const Text(
                            "60%",
                            style: TextStyle(fontSize: 12),
                          ),
                          animation: true,
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.redAccent,
                          backgroundColor: Colors.grey.shade400,
                          radius: 40,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 15),
              child: Wrap(
                runSpacing: 10,
                alignment: WrapAlignment.start,
                spacing: 20,
                children: [
                  Container(
                    width: 360,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15).copyWith(left: 45),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.redAccent, width: 1),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(
                            AssetRes.shoppingCart,
                            color: Colors.redAccent,
                          ),
                        ),
                        const SizedBox(width: 25),
                        Column(
                          children: [
                            const Text(
                              "10,000",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Purchase",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "+50%",
                          style: TextStyle(color: Colors.redAccent),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 360,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15).copyWith(left: 45),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.deepPurpleAccent, width: 1),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(
                            AssetRes.stock,
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                        const SizedBox(width: 25),
                        Column(
                          children: [
                            const Text(
                              "4,200",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Sales",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "+70%",
                          style: TextStyle(color: Colors.deepPurpleAccent),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 360,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15).copyWith(left: 45),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.yellow, width: 1),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(
                            AssetRes.discount,
                            color: Colors.yellow,
                          ),
                        ),
                        const SizedBox(width: 25),
                        Column(
                          children: [
                            const Text(
                              "7,000",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Sales return",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "-20%",
                          style: TextStyle(color: Colors.yellow),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 360,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15).copyWith(left: 45),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.green, width: 1),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(
                            AssetRes.noteCheck,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(width: 25),
                        Column(
                          children: [
                            const Text(
                              "5,700",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Purchase rate",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "+70%",
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 15),
              child: Wrap(
                runSpacing: 10,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 160,
                        width: 375,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    color: Colors.pinkAccent,
                                    shape: BoxShape.circle,
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  child: Image.asset(
                                    AssetRes.studentCourse,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "100+",
                                      style: TextStyle(
                                        color: ColorRes.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      "Completed Courses",
                                      style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 30),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                              child: const Text(
                                "View Course->",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        height: 160,
                        width: 375,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    color: Colors.orangeAccent,
                                    shape: BoxShape.circle,
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  child: Image.asset(
                                    AssetRes.noteCheck,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "50+",
                                      style: TextStyle(
                                        color: ColorRes.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      "In Progress Courses",
                                      style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 30),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                              child: const Text(
                                "View Course->",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height: 160,
                        width: 500,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Total Users",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                                PopupMenuButton(
                                  itemBuilder: (context) {
                                    return List.generate(3, (index) => PopupMenuItem(child: Text("$index")));
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.deepPurpleAccent.withOpacity(0.2),
                                          border: Border.all(color: Colors.deepPurpleAccent, width: 1),
                                          shape: BoxShape.circle,
                                        ),
                                        padding: const EdgeInsets.all(15),
                                        child: Image.asset(
                                          AssetRes.addUser,
                                          color: Colors.deepPurpleAccent,
                                        ),
                                      ),
                                      const SizedBox(width: 30),
                                      const Column(
                                        children: [
                                          Text(
                                            "178,098",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            "+30.89",
                                            style: TextStyle(color: Colors.lightGreen),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.lightGreen.withOpacity(0.2),
                                          border: Border.all(color: Colors.lightGreen, width: 1),
                                          shape: BoxShape.circle,
                                        ),
                                        padding: const EdgeInsets.all(12),
                                        child: Image.asset(
                                          AssetRes.personRemove,
                                          color: Colors.lightGreen,
                                        ),
                                      ),
                                      const SizedBox(width: 30),
                                      const Column(
                                        children: [
                                          Text(
                                            "178,098",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            "+30.89",
                                            style: TextStyle(
                                              color: Colors.redAccent,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        height: 160,
                        width: 500,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Followers Growth",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                                PopupMenuButton(
                                  itemBuilder: (context) {
                                    return List.generate(3, (index) => PopupMenuItem(child: Text("$index")),);
                                  },
                                ),
                              ],
                            ),
                            Expanded(
                              child: SfCartesianChart(
                                primaryXAxis: const CategoryAxis(
                                  isVisible: false,
                                ),
                                primaryYAxis: const NumericAxis(
                                  isVisible: false,
                                ),
                                plotAreaBorderWidth: 0,
                                series: <CartesianSeries>[
                                  SplineAreaSeries<ChartData, String>(
                                    dataSource: [
                                      ChartData('Jan', 30),
                                      ChartData('Feb', 28),
                                      ChartData('Mar', 34),
                                      ChartData('Apr', 32),
                                      ChartData('May', 40),
                                      ChartData('Jun', 38),
                                      ChartData('Jul', 36),
                                      ChartData('Aug', 45),
                                      ChartData('Sep', 50),
                                      ChartData('Oct', 55),
                                    ],
                                    xValueMapper: (ChartData data, _) => data.month,
                                    yValueMapper: (ChartData data, _) => data.followers,
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.blue.withOpacity(0.4),
                                        Colors.blue.withOpacity(0.1)
                                      ],
                                      stops: const [0.2, 1],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 15),
                  Container(
                    height: 335,
                    width: 600,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Visitors",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            PopupMenuButton(
                              itemBuilder: (context) {
                                return List.generate(3, (index) => PopupMenuItem(child: Text("$index")));
                              },
                            ),
                          ],
                        ),
                        Expanded(
                          child: SfCartesianChart(
                            series: <CartesianSeries>[
                              LineSeries<ChartDataSale1, int>(
                                dataSource: generalController.chartDataSale1,
                                xValueMapper: (ChartDataSale1 data, _) => data.x,
                                yValueMapper: (ChartDataSale1 data, _) => data.y,
                                name: 'Ethereum',
                                color: Colors.blueGrey,
                              ),
                              ColumnSeries<ChartDataLive, int>(
                                dataSource: generalController.chartDataLive,
                                xValueMapper: (ChartDataLive data, _) => data.x,
                                yValueMapper: (ChartDataLive data, _) => data.y,
                                color: ColorRes.darkRed,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 15),
              child: Wrap(
                runSpacing: 10,
                spacing: 15,
                alignment: WrapAlignment.start,
                children: generalController.socialData.map((e) => SocialCard(socialData: e)).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 15, bottom: 50),
              child: Wrap(
                runSpacing: 10,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 550,
                        child: GridView(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 2.5,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 10,
                          ),
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          children: generalController.orderData.map((e) => OrdersTab(orderData: e)).toList(),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Wrap(
                        spacing: 15,
                        children: [
                          Container(
                            height: 110,
                            width: 265,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "1,80k",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        color: ColorRes.black,
                                      ),
                                    ),
                                    Text(
                                      "Orders",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey.shade400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 110,
                                  width: 150,
                                  child: SfCartesianChart(
                                    primaryXAxis: const CategoryAxis(
                                      isVisible: false,
                                    ),
                                    primaryYAxis: const NumericAxis(
                                      isVisible: false,
                                    ),
                                    plotAreaBorderWidth: 0,
                                    series: <SplineAreaSeries<SalesData, String>>[
                                      SplineAreaSeries<SalesData, String>(
                                        dataSource: <SalesData>[
                                          SalesData('Jan', 35),
                                          SalesData('Feb', 28),
                                          SalesData('Mar', 34),
                                          SalesData('Apr', 32),
                                          SalesData('May', 40),
                                        ],
                                        xValueMapper: (SalesData sales, _) => sales.year,
                                        yValueMapper: (SalesData sales, _) => sales.sales,
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.deepPurpleAccent.withOpacity(0.4),
                                            Colors.deepPurpleAccent.withOpacity(0.1)
                                          ],
                                          stops: const [0.2, 1],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 110,
                            width: 265,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "6,90k",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        color: ColorRes.black,
                                      ),
                                    ),
                                    Text(
                                      "Profit",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey.shade400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 110,
                                  width: 150,
                                  child: SfCartesianChart(
                                    primaryXAxis: const CategoryAxis(
                                      isVisible: false,
                                    ),
                                    primaryYAxis: const NumericAxis(
                                      isVisible: false,
                                    ),
                                    plotAreaBorderWidth: 0,
                                    series: <SplineAreaSeries<SalesData, String>>[
                                      SplineAreaSeries<SalesData, String>(
                                        dataSource: <SalesData>[
                                          SalesData('Jan', 35),
                                          SalesData('Feb', 28),
                                          SalesData('Mar', 34),
                                          SalesData('Apr', 32),
                                          SalesData('May', 40),
                                        ],
                                        xValueMapper: (SalesData sales, _) => sales.year,
                                        yValueMapper: (SalesData sales, _) => sales.sales,
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.lightBlueAccent.withOpacity(0.4),
                                            Colors.lightBlueAccent.withOpacity(0.1)
                                          ],
                                          stops: const [0.2, 1],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(width: 15),
                  Container(
                    height: 345,
                    width: 400,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.brown.shade200,
                              ),
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(AssetRes.man3),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Your Balance",
                              style: TextStyle(color: Colors.grey.shade400),
                            ),
                          ],
                        ),
                        const Text(
                          "\$768,987.90",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.redAccent.withOpacity(0.2),
                                    ),
                                    child: const Icon(
                                      CupertinoIcons.arrow_down_right_circle,
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Investment",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey.shade500,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const Text(
                                        "78.8K",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const Text(
                                        "-11.67%",
                                        style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 15),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.green.withOpacity(0.2),
                                    ),
                                    child: const Icon(
                                      CupertinoIcons.arrow_up_right_circle,
                                      color: Colors.green,
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Cash Back",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey.shade500,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const Text(
                                        "19.7K",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const Text(
                                        "+10.67%",
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.green.withOpacity(0.2),
                                    ),
                                    child: const Icon(
                                      CupertinoIcons.arrow_up_right_circle,
                                      color: Colors.green,
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Column(
                                    children: [
                                      Text(
                                        "Profit",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey.shade500,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const Text(
                                        "6.48K",
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 15),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.redAccent.withOpacity(0.2),
                                    ),
                                    child: const Icon(
                                      CupertinoIcons.arrow_down_right_circle,
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Loss",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey.shade500,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const Text(
                                        "1.4K",
                                        style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  Container(
                    height: 345,
                    width: 525,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    child: CalendarCarousel(
                      weekendTextStyle: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      thisMonthDayBorderColor: Colors.transparent,
                      weekFormat: false,
                      daysTextStyle: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      height: 300.0,
                      markedDateIconBorderColor: Colors.transparent,
                      childAspectRatio: 1.5,
                      dayPadding: 0.0,
                      prevDaysTextStyle: const TextStyle(fontSize: 15),
                      selectedDateTime: DateTime.now(),
                      headerTextStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      dayButtonColor: Colors.white,
                      weekDayBackgroundColor: Colors.white,
                      markedDateMoreCustomDecoration: const BoxDecoration(color: Colors.white),
                      shouldShowTransform: false,
                      staticSixWeekFormat: false,
                      weekdayTextStyle: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      todayButtonColor: Colors.transparent,
                      selectedDayBorderColor: Colors.transparent,
                      todayBorderColor: Colors.transparent,
                      selectedDayButtonColor: Colors.transparent,
                      daysHaveCircularBorder: false,
                      todayTextStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.deepPurple,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
