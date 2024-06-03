import 'package:buzz/screens/dashboard/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DashBoardScreen extends StatefulWidget {
  DashBoardScreen({super.key, required this.child, required this.screenName});

  final Widget child;

  final String screenName;

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  final DashBoardController dashBoardController =
      Get.put(DashBoardController());

  indexWiseNavigation({String? index}) {
    print("------------------------$index");
    if (index == 'DashBoards') {
      Get.offAll(
          transition: Transition.noTransition,
          () => DashBoardScreen(child: Text('first'), screenName: 'DashBoards'));
    } else if (index == 'General') {
      Get.offAll(
          transition: Transition.noTransition,
          () => DashBoardScreen(child: Text('second'), screenName: 'General'));
    } else if (index == 'Project') {
      Get.offAll(
          transition: Transition.noTransition,
          () => DashBoardScreen(child: Text('third'), screenName: 'Project'));
    } else if (index == 'E-Commerce') {
      Get.offAll(
          transition: Transition.noTransition,
          () => DashBoardScreen(child: Text('forth'), screenName: 'E-Commerce'));
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isDesktop) {
          width = 800;
        } else if (sizingInformation.isTablet) {
          width = 550;
        } else if (sizingInformation.isMobile) {
          width = 350;
        }
        return Scaffold(
          body: Row(
            children: [
              Expanded(
                flex: sizingInformation.isDesktop
                    ? 1
                    : sizingInformation.isTablet
                        ? 2
                        : 2,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: Column(
                    children: [


                      Container(
                        margin:
                        const EdgeInsets.symmetric(vertical: 1),
                        height: 45,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        decoration:
                        const BoxDecoration(color: Colors.pink),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '',
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),


                      // ListView.builder(
                      //   shrinkWrap: true,
                      //   physics: const NeverScrollableScrollPhysics(),
                      //   itemCount: dashBoardController.items.length,
                      //   itemBuilder: (BuildContext context, int index) {
                      //     return SizedBox(
                      //         height: 47,
                      //         child: Row(
                      //           mainAxisAlignment:
                      //               MainAxisAlignment.spaceBetween,
                      //           children: [
                      //             Expanded(
                      //               child: GestureDetector(
                      //                 onTap: () {
                      //                   indexWiseNavigation(index: dashBoardController.items[index]);
                      //                 },
                      //                 child: Container(
                      //                   margin:
                      //                       const EdgeInsets.symmetric(vertical: 1),
                      //                   height: 45,
                      //                   padding: const EdgeInsets.symmetric(
                      //                       horizontal: 20, vertical: 5),
                      //                   decoration:
                      //                       const BoxDecoration(color: Colors.pink),
                      //                   child: Align(
                      //                     alignment: Alignment.centerLeft,
                      //                     child: Text(
                      //                       dashBoardController.items[index],
                      //                       textAlign: TextAlign.start,
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ),
                      //             ),
                      //             widget.screenName == dashBoardController.items[index]
                      //                 ? Container(
                      //                     width: 4,
                      //                     height: 47,
                      //                     alignment: Alignment.centerRight,
                      //                     decoration: BoxDecoration(
                      //                         color: Colors.brown,
                      //                         borderRadius:
                      //                             BorderRadius.circular(3)),
                      //                   )
                      //                 : SizedBox(),
                      //           ],
                      //         ));
                      //   },
                      // ),
                    ],
                  ),
                ),
              ),
              Expanded(
                // flex: 5,
                // child: Obx(()=>
                //    controller.screen[controller.currentIndex.value]),
                flex: sizingInformation.isDesktop
                    ? 4
                    : sizingInformation.isTablet
                        ? 6
                        : 8,
                child: widget.child,
              ),
            ],
          ),
        );
      },
    );
  }
}
