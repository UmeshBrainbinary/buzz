import 'package:buzz/screens/general/general_controller.dart';
import 'package:buzz/utils/Assets_res.dart';
import 'package:buzz/utils/Color.dart';
import 'package:flutter/material.dart';
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
                children: [Text('vfdnmkj')],
              ),
            ),
            Row(
              children: [
                Wrap(
                  direction: Axis.horizontal,
                  children: generalController.generalList
                      .map((element) => Padding(
                            padding: const EdgeInsets.only(left: 10.0, top: 20),
                            child: GeneralDataValue(
                              generalData: generalController.generalList[
                                  generalController.generalList.indexOf(element)],
                            ),
                          ))
                      .toList(),
                ),
                const SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 20),
                  child: Container(
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
                              const SizedBox(
                                height: 10,
                              ),
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
                              const SizedBox(
                                height: 10,
                              ),
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
                              const SizedBox(
                                height: 10,
                              ),
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
              padding: const EdgeInsets.only(left: 10.0,top: 15),
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
                          style: TextStyle(
                            color: Colors.redAccent,
                          ),
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
                            border: Border.all(
                                color: Colors.deepPurpleAccent, width: 1),
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
                          style: TextStyle(
                            color: Colors.deepPurpleAccent,
                          ),
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
                          style: TextStyle(
                            color: Colors.yellow,
                          ),
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
                            AssetRes.shoppingCart,
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
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 15),
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
                      const SizedBox(height: 15,),
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
                  const SizedBox(width: 15,),
                  Column(
                    children: [
                      Container(
                        height: 160,
                        width: 500,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
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
                                  return List.generate(3, (index) => PopupMenuItem(child: Text("$index")),);
                                },),
                              ],
                            ),
                            const SizedBox(height: 10,),
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
                                          border: Border.all(color: Colors.deepPurpleAccent,width: 1),
                                          shape: BoxShape.circle,
                                        ),
                                        padding: const EdgeInsets.all(15),
                                        child: Image.asset(AssetRes.addUser,color: Colors.deepPurpleAccent,),
                                      ),
                                      const SizedBox(width: 30,),
                                      const Column(
                                        children: [
                                          Text(
                                            "178,098",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16
                                            ),
                                          ),
                                          Text(
                                            "+30.89",
                                            style: TextStyle(
                                              color: Colors.lightGreen
                                            ),
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
                                          border: Border.all(color: Colors.lightGreen,width: 1),
                                          shape: BoxShape.circle,
                                        ),
                                        padding: const EdgeInsets.all(12),
                                        child: Image.asset(AssetRes.personRemove,color: Colors.lightGreen,),
                                      ),
                                      const SizedBox(width: 30,),
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
                      const SizedBox(height: 15,),
                      Container(
                        height: 160,
                        width: 500,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
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
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 15,),
                  Container(
                    height: 335,
                    width: 600,
                    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween ,
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
                                return List.generate(3, (index) => PopupMenuItem(child: Text("$index")),);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    decoration: const BoxDecoration(),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 15),
              child: Wrap(
                runSpacing: 10,
                spacing: 15,
                alignment: WrapAlignment.start,
                children: generalController.socialData.map((e) => SocialCard(socialData: e)).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 15),
              child: Wrap(
                children: [

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GeneralDataValue extends StatelessWidget {
  final GeneralData generalData;

  const GeneralDataValue({super.key, required this.generalData});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorRes.white,
      ),
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Image.asset(
                  generalData.image,
                  height: 35,
                  width: 35,
                ),
                const SizedBox(width: 10),
                Text(
                  generalData.title,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                height: 130,
                width: 150,
                child: SfCartesianChart(
                  primaryXAxis: const CategoryAxis(
                    isVisible: false,
                  ),
                  primaryYAxis: const NumericAxis(
                    isVisible: false,
                  ),
                  plotAreaBorderWidth: 0,
                  series: <LineSeries<SalesData, String>>[
                    LineSeries<SalesData, String>(
                      dataSource: <SalesData>[
                        SalesData('Jan', 35),
                        SalesData('Feb', 28),
                        SalesData('Mar', 34),
                        SalesData('Apr', 32),
                        SalesData('May', 40),
                      ],
                      xValueMapper: (SalesData sales, _) => sales.year,
                      yValueMapper: (SalesData sales, _) => sales.sales,
                      color: Colors.black,
                      // Shadow color
                      width: 2, //
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: generalData.color,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Column(
                  children: [
                    Text(
                      generalData.price,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      generalData.tex,
                      style: TextStyle(
                        color: generalData.textColor,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15),
            ],
          )
        ],
      ),
    );
  }
}

class SocialCard extends StatelessWidget {

  final SocialData socialData;

  const SocialCard({super.key, required this.socialData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 365,
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10).copyWith(bottom: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(socialData.image,height: 40,width: 40,),
                  const SizedBox(width: 20,),
                  Text(
                    socialData.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Text(
                socialData.percent,
                style: const TextStyle(
                  color: Colors.green,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    socialData.followers,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Followers",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500
                    ),
                  ),
                ],
              ),
              CircularPercentIndicator(
                percent: socialData.circularValue,
                center: Text(
                  socialData.centerText,
                  style: TextStyle(fontSize: 12),
                ),
                animation: true,
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: socialData.color,
                backgroundColor: Colors.grey.shade400,
                radius: 40,
              )
            ],
          )
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
