import 'package:buzz/screens/home/home_controller.dart';
import 'package:buzz/screens/home/widget/common_container_widget.dart';
import 'package:buzz/screens/product_page/widget/product_page_widget.dart';
import 'package:buzz/utils/Assets_res.dart';
import 'package:buzz/utils/Color.dart';
import 'package:buzz/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  late TabController tabController;

  HomeController homeController = Get.put(HomeController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      homeController.changeTabIndex(tabController.index);
    });
  }

  @override
  void dispose() {
   tabController.dispose();
    super.dispose();
  }

  Widget tabContainer() {
    return SizedBox(
      width: double.infinity,
      child: TabBar(
        dividerHeight: 0,
        isScrollable: true,
        controller: tabController,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(10), // Creates border
          color: Colors.blue,
        ),
        labelColor: Colors.white,
        unselectedLabelColor: Colors.black,
        tabs: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10),
            child: Tab(text: 'Credit'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10),
            child: Tab(text: 'Debit Card'),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10.0,right: 10),
            child: Tab(text: 'Master Card'),
          ),
        ],
      ),
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.background,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ResponsiveBuilder(
          builder: (BuildContext context, SizingInformation sizingInformation) {
            return ListView(
              children: [
                row(
                    text: StringRes.dashboards,
                    data: StringRes.defaultDashboard),
                const SizedBox(
                  height: 25,
                ),
                Wrap(
                 direction: Axis.horizontal,
                  children: homeController.wrapDataList
                      .map((element) => Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 20),
                    child: DataWrap(
                      wrapData: homeController.wrapDataList[
                      homeController.wrapDataList
                          .indexOf(element)],
                    ),
                  ))
                      .toList(),
                ),

                const SizedBox(
                  height: 25,
                ),

                const SizedBox(
                  height: 20,
                ),
               Wrap(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       width: 320,
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           color: ColorRes.white,
                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Column(
                             children: [
                               const Row(
                                 children: [
                                   Text(
                                     StringRes.countries,
                                     style: TextStyle(
                                         fontWeight: FontWeight.bold, fontSize: 18),
                                   ),
                                   Spacer(),
                                   Icon(Icons.more_vert)
                                 ],
                               ),
                               const SizedBox(
                                 height: 10,
                               ),
                               SizedBox(
                                 height: 300,
                                 child: ListView.builder(
                                   physics: const NeverScrollableScrollPhysics(),
                                   shrinkWrap: true,
                                   itemCount: homeController.data.length,
                                   itemBuilder: (context, index) {
                                     return Padding(
                                       padding: const EdgeInsets.all(10.0),
                                       child: Row(
                                         children: [
                                           ClipRRect(
                                               borderRadius: BorderRadius.circular(100),
                                               child: Image.asset(
                                                 homeController.data[index]['image'],
                                                 height: 40,
                                                 width: 40,
                                                 fit: BoxFit.fill,
                                               )),
                                           const SizedBox(
                                             width: 20,
                                           ),
                                           Text(
                                             homeController.data[index]['title'],
                                             style: const TextStyle(
                                                 fontWeight: FontWeight.bold),
                                           ),
                                           const Spacer(),
                                           Text(
                                             homeController.data[index]['rate'],
                                             style: const TextStyle(
                                                 color: ColorRes.textcolor),
                                           ),
                                         ],
                                       ),
                                     );
                                   },
                                 ),
                               ),
                               const Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Text(
                                     'See all',
                                     style: TextStyle(color: ColorRes.textcolor),
                                   ),
                                   SizedBox(
                                     width: 10,
                                   ),
                                   Icon(
                                     Icons.arrow_forward_ios,
                                     size: 12,
                                   )
                                 ],
                               )
                             ],
                           ),
                         ),
                       ),
                     ),
                   ),

                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       width: 320,
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           color: ColorRes.lightSky,
                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Row(
                             children: [
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     height: 35,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(10),
                                         color: ColorRes.yellow),
                                     child: const Padding(
                                       padding: EdgeInsets.only(left: 15.0, right: 15),
                                       child: Center(
                                           child: Text(
                                             StringRes.onTheGo,
                                             style: TextStyle(fontWeight: FontWeight.bold),
                                           )),
                                     ),
                                   ),
                                   const SizedBox(
                                     height: 20,
                                   ),
                                   const Text(
                                     StringRes.downloadApp,
                                     style: TextStyle(
                                         fontWeight: FontWeight.bold, fontSize: 18),
                                   ),
                                   const SizedBox(
                                     height: 30,
                                   ),
                                   Container(
                                     height: 40,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(10),
                                         color: ColorRes.black),
                                     child: const Padding(
                                       padding: EdgeInsets.only(left: 10.0, right: 10),
                                       child: Center(
                                           child: Text(
                                             StringRes.download,
                                             style: TextStyle(color: ColorRes.white),
                                           )),
                                     ),
                                   ),
                                   const SizedBox(
                                     height: 10,
                                   ),
                                   const Text(
                                     StringRes.available,
                                     style: TextStyle(
                                         color: ColorRes.textcolor,
                                         fontSize: 12,
                                         fontWeight: FontWeight.bold),
                                   ),
                                 ],
                               ),
                               const Spacer(),
                               Image.asset(
                                 AssetRes.image,
                                 height: 350,
                                 width: 120,
                               )
                             ],
                           ),
                         ),
                       ),
                     ),
                   ),

                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                         width: 320,
                         child: Container(
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10), color: ColorRes.white),
                           child: Padding(
                             padding: const EdgeInsets.all(10.0),
                             child: Column(
                               children: [
                                 const Row(
                                   children: [
                                     Text(StringRes.activity),
                                     SizedBox(
                                       width: 10,
                                     ),
                                     Icon(Icons.error_outline),
                                     Spacer(),
                                     Text(
                                       StringRes.more,
                                       style: TextStyle(color: ColorRes.textcolor),
                                     ),
                                     SizedBox(
                                       width: 5,
                                     ),
                                     Icon(
                                       Icons.arrow_forward_ios,
                                       size: 12,
                                     ),
                                   ],
                                 ),
                                 const SizedBox(
                                   height: 20,
                                 ),
                                 SizedBox(
                                   height: 310,
                                   child: ListView.builder(
                                     physics: const NeverScrollableScrollPhysics(),
                                     shrinkWrap: true,
                                     itemCount: homeController.activity.length,
                                     itemBuilder: (context, index) {
                                       return Padding(
                                         padding: const EdgeInsets.all(10.0),
                                         child: Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                                           children: [
                                             ClipRRect(
                                                 borderRadius: BorderRadius.circular(100),
                                                 child: Image.asset(
                                                   homeController.activity[index]['image'],
                                                   height: 40,
                                                   width: 40,
                                                 )),
                                             Column(
                                               crossAxisAlignment: CrossAxisAlignment.start,
                                               children: [
                                                 Text(homeController.activity[index]['title']),
                                                 Text(
                                                   homeController.activity[index]['sub'],
                                                   style: const TextStyle(
                                                       color: ColorRes.textcolor),
                                                 ),
                                               ],
                                             ),
                                             Column(
                                               children: [
                                                 Text(homeController.activity[index]['rate']),
                                                 Text(
                                                   homeController.activity[index]['date'],
                                                   style: const TextStyle(
                                                       color: ColorRes.textcolor),
                                                 ),
                                               ],
                                             ),
                                           ],
                                         ),
                                       );
                                     },
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         )),
                   )
                 ],
               ),

                SizedBox(height: 20,),

                Wrap(
                  direction: Axis.horizontal,
                  children: homeController.totalDefault
                      .map((element) => Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, top: 20),
                            child: DataDefault(
                              defaultData: homeController.totalDefault[
                                  homeController.totalDefault
                                      .indexOf(element)],
                            ),
                          ))
                      .toList(),
                ),
                SizedBox(height: 30,),

                Container(

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorRes.white
                  ),
                  child:Wrap(
                    children: [
                      _buildColumnRoundedChart(),
                      SizedBox(width: 30,),
                     Container(
                      width: 470,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Payment Method',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                            SizedBox(height: 20,),
                            tabContainer(),
                            SizedBox(height: 20,),
                            SizedBox(
                              height: 400,
                              child: TabBarView(
                                controller: tabController,
                                children: [
                                  text(),
                                  text(),
                                  text(),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),


              ],
            );
          },
        ),
      ),
    );


  }
  Widget method(){
    return Column(
      children: [
        _buildColumnRoundedChart(),
        SizedBox(width: 30,),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Payment Method',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              SizedBox(height: 20,),
              tabContainer(),
              SizedBox(height: 20,),
              SizedBox(
                height: 400,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    text(),
                    text(),
                    text(),
                  ],
                ),
              )

            ],
          ),
        ),
      ],
    );
  }

}

class DataDefault extends StatelessWidget {
  final DefaultData defaultData;

  const DataDefault({super.key, required this.defaultData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorRes.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  defaultData.title,
                  //  StringRes.earning,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.more_vert)
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  defaultData.price,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  defaultData.tex,
                  style: TextStyle(color: ColorRes.blue),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            LinearProgressIndicator(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              value: defaultData.value,
              // This represents 30% progress
              backgroundColor: defaultData.backColor,
              color: defaultData.color,
              minHeight: 10,
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                text: 'This week Extra Earning',
                style: TextStyle(
                    color: ColorRes.textcolor, fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                      text: '\$${9233}',
                      style: TextStyle(color: defaultData.colorText)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



Widget _buildColumnRoundedChart() {
  List<SalesData> chartData = [
    SalesData('1', 30),
    SalesData('2', 20),
    SalesData('3', 20),
    SalesData('4', 30),
    SalesData('5', 40),
    SalesData('6', 30),
    SalesData('7', 10),
    SalesData('8', 70),
  ];

  return Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Selling Growth',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const SizedBox(height: 20),
        Container(
          width: 500,
          child: SfCartesianChart(
            primaryXAxis: const CategoryAxis(),
            series: <CartesianSeries>[
              ColumnSeries<SalesData, String>(
                dataSource: chartData,
                xValueMapper: (SalesData sales, _) => sales.month,
                yValueMapper: (SalesData sales, _) => sales.sales,
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xff0059E7),
                dataLabelSettings: const DataLabelSettings(isVisible: true),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

class SalesData {
  final String month;
  final double sales;

  SalesData(this.month, this.sales);
}