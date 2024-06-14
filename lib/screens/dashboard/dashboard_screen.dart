
import 'package:buzz/hour.dart';


import 'package:buzz/screens/Buttons/Defult_style/default_style_screen.dart';
import 'package:buzz/screens/Buttons/Edge_style/Edgebuttons_screen.dart';
import 'package:buzz/screens/Buttons/Flat_buttons/flatbuttons_screen.dart';
import 'package:buzz/screens/Buttons/Raised_buttons/Raisedbuttons_Screen.dart';
import 'package:buzz/screens/Chatscreen/ChatScreen.dart';
import 'package:buzz/screens/Menu%20Level/Level_1/level_1_1.dart';

import 'package:buzz/screens/cart/cart_screen.dart';
import 'package:buzz/screens/chart_module/chart_screen.dart';
import 'package:buzz/screens/checkout/checkout_screen.dart';
import 'package:buzz/screens/dashboard/dashboard_controller.dart';
import 'package:buzz/screens/faq/faq_screen.dart';
import 'package:buzz/screens/file_manager/file_manager_screen.dart';
import 'package:buzz/screens/invoice/invoice_screen.dart';
import 'package:buzz/screens/pricing/pricing_screen.dart';
import 'package:buzz/screens/product/product_screen.dart';
import 'package:buzz/screens/product_page/product_page_screen.dart';
import 'package:buzz/screens/user_cards/user_card_screen.dart';
import 'package:buzz/screens/user_edit/user_edit_screen.dart';
import 'package:buzz/screens/user_profile/user_profile_screen.dart';
import 'package:buzz/utils/string.dart';
import 'package:flutter/cupertino.dart';
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
    if (index == StringRes.dashboards) {
      Get.offAll(
          transition: Transition.noTransition,



              () => DashBoardScreen(
              child: Text('dashBoard'), screenName: 'DashBoards'));

    } else if (index == StringRes.general) {
      Get.offAll(
          transition: Transition.noTransition,
              () => DashBoardScreen(child: Text('general'), screenName: 'General'));
    } else if (index == StringRes.charts) {
      Get.offAll(
          transition: Transition.noTransition,
              () => DashBoardScreen(screenName: 'Chart', child:  ChartScreen()));
    } else if (index == StringRes.faq) {
      Get.offAll(
          transition: Transition.noTransition,
              () => DashBoardScreen(child: FaqScreen(), screenName: 'E-Commerce'));
    } else if (index == StringRes.tables) {
      Get.offAll(
          transition: Transition.noTransition,
              () =>
              DashBoardScreen(child: Text('tables'), screenName: 'E-Commerce'));
    } else if (index == StringRes.chat) {
      Get.offAll(
          transition: Transition.noTransition,
              () => DashBoardScreen(child: Chatscreen(), screenName: 'E-Commerce'));
    } else if (index == StringRes.product) {
      Get.offAll(
          transition: Transition.noTransition,
              () =>
              DashBoardScreen(child: ProductPage(), screenName: 'E-Commerce'));
    } else if (index == StringRes.productPage) {
      Get.offAll(
          transition: Transition.noTransition,
              () => DashBoardScreen(
              child: ProductPageScreen(), screenName: 'E-Commerce'));
    } else if (index == StringRes.invoice) {
      Get.offAll(
          transition: Transition.noTransition,
              () => DashBoardScreen(
              child: InvoiceScreen(), screenName: 'E-Commerce'));
    } else if (index == StringRes.cart) {
      Get.offAll(
          transition: Transition.noTransition,
              () => DashBoardScreen(child: CartScreen(), screenName: 'E-Commerce'));
    }
    else if (index == StringRes.checkOut) {
      Get.offAll(
          transition: Transition.noTransition,
              () => DashBoardScreen(
              child: CheckOutScreen(), screenName: 'E-Commerce'));
    } else if (index == StringRes.pricing) {
      Get.offAll(
          transition: Transition.noTransition,
              () => DashBoardScreen(
              child: PricingScreen(), screenName: 'E-Commerce'));
    }else if (index == StringRes.fileManager) {
      Get.offAll(
          transition: Transition.noTransition,
              () => DashBoardScreen(
              child: HomeScreen(), screenName: 'E-Commerce'));
    }
    else if (index == StringRes.userProfile) {
      Get.offAll(
          transition: Transition.noTransition,
              () => DashBoardScreen(
              child: UserProfileScreen(), screenName: 'Users'));
    }else if (index == StringRes.userEdit) {
      Get.offAll(
          transition: Transition.noTransition,
              () => DashBoardScreen(
              child: UserEditScreen(), screenName: 'Users'));
    }else if (index == StringRes.userCards) {
      Get.offAll(
          transition: Transition.noTransition,
              () => DashBoardScreen(
              child: UserCardScreen(), screenName: 'Users'));
    }else if (index == StringRes.level1) {
      Get.offAll(
          transition: Transition.noTransition,
              () => DashBoardScreen(
              child:Level11(), screenName: 'Level 1.1'));
    }else if (index ==StringRes.DefaultStyle) {
      Get.offAll(
          transition: Transition.noTransition,
              () => DashBoardScreen(
              child: DefaultStyleScreen(), screenName: StringRes.DefaultStyle));
    }else if (index == StringRes.EdgeStyle) {
      Get.offAll(
          transition: Transition.noTransition,
              () => DashBoardScreen(
              child:EdgebuttonsScreen(), screenName: StringRes.EdgeStyle));
    }else if (index == StringRes.FlatStyle) {
      Get.offAll(
          transition: Transition.noTransition,
              () => DashBoardScreen(
              child:FlatbuttonsScreen(), screenName: StringRes.FlatStyle));
    }else if (index == StringRes.raiseStyle) {
      Get.offAll(
          transition: Transition.noTransition,
              () => DashBoardScreen(
              child:RaisedbuttonsScreen(), screenName: StringRes.raiseStyle));
    }else if (index == StringRes.level2) {
      Get.offAll(
          transition: Transition.noTransition,
              () => DashBoardScreen(
              child:Level11(), screenName: 'Level 1.2'));
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
            body: GetBuilder<DashBoardController>(
              id: 'allBool',
              builder: (controller) {
                return Row(
                  children: [
                    Expanded(
                      flex: sizingInformation.isDesktop
                          ? 1
                          : sizingInformation.isTablet
                          ? 2
                          : 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Text(
                                    StringRes.buzz,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900, fontSize: 25),
                                  ),
                                  Text(
                                    '.',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blueAccent,
                                        fontSize: 25),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 10,
                              ),
                            ),

                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                StringRes.general.toUpperCase(),
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 10,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    dashBoardController.isOpenWidgets = false;
                                    dashBoardController.selectedMainCategory =
                                    'Dashboards';
                                    indexWiseNavigation(
                                        index: StringRes.dashboards);
                                  });
                                },
                                child: Row(
                                  children: [
                                    Icon(CupertinoIcons.home,
                                        size: 17,
                                        color: dashBoardController
                                            .selectedMainCategory ==
                                            'Dashboards'
                                            ? Colors.blueAccent
                                            : Colors.black),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      StringRes.dashboards,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: dashBoardController
                                              .selectedMainCategory ==
                                              'Dashboards'
                                              ? Colors.blueAccent
                                              : Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 10,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.category_rounded,
                                      size: 17,
                                      color: dashBoardController
                                          .selectedMainCategory ==
                                          'Widgets'
                                          ? Colors.blueAccent
                                          : Colors.black),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      dashBoardController.selectedMainCategory =
                                      'Widgets';
                                      setState(() {
                                        if (dashBoardController.isOpenWidgets ==
                                            true) {
                                          dashBoardController.isOpenWidgets = false;
                                        } else {
                                          dashBoardController.isOpenWidgets = true;
                                        }
                                      });
                                    },
                                    child: Text(
                                      StringRes.widgetss,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: dashBoardController
                                              .selectedMainCategory ==
                                              'Widgets'
                                              ? Colors.blueAccent
                                              : Colors.black),
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                      dashBoardController.isOpenWidgets == true
                                          ? Icons.arrow_drop_down_sharp
                                          : Icons.arrow_drop_up_sharp,
                                      color: dashBoardController
                                          .selectedMainCategory ==
                                          'Widgets'
                                          ? Colors.blueAccent
                                          : Colors.black),
                                ],
                              ),
                            ),
                            dashBoardController.selectedMainCategory == 'Widgets' &&
                                dashBoardController.isOpenWidgets == true
                                ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 25,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        indexWiseNavigation(
                                            index: StringRes.general);
                                      },
                                      child: Text(
                                        StringRes.general,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(fontSize: 11),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 25,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        indexWiseNavigation(
                                            index: StringRes.charts);
                                      },
                                      child: Text(
                                        StringRes.charts,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(fontSize: 11),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                                : SizedBox(),
                            Expanded(
                              child: SizedBox(
                                height: 15,
                              ),
                            ),
                            Container(
                              height: 0.5,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 15,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                StringRes.application.toUpperCase(),
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 10,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                onTap: () {
                                  dashBoardController.selectedMainCategory =
                                      StringRes.projects;

                                  setState(() {});
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.checkmark_alt_circle,
                                      size: 17,
                                      color: dashBoardController
                                          .selectedMainCategory ==
                                          StringRes.projects
                                          ? Colors.blueAccent
                                          : Colors.black,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      StringRes.projects,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: dashBoardController
                                            .selectedMainCategory ==
                                            StringRes.projects
                                            ? Colors.blueAccent
                                            : Colors.black,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_drop_up_sharp,
                                      color: dashBoardController
                                          .selectedMainCategory ==
                                          StringRes.projects
                                          ? Colors.blueAccent
                                          : Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 10,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.delete_outlined,
                                      size: 17,
                                      color: dashBoardController
                                          .selectedMainCategory ==
                                          'E-commerce'
                                          ? Colors.blueAccent
                                          : Colors.black),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      dashBoardController.selectedMainCategory =
                                      'E-commerce';
                                      setState(() {
                                        if (dashBoardController.openWidget ==
                                            true) {
                                          dashBoardController.openWidget = false;
                                        } else {
                                          dashBoardController.openWidget = true;
                                        }
                                      });
                                    },
                                    child: Text(
                                      StringRes.eCommerce,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: dashBoardController
                                              .selectedMainCategory ==
                                              'E-commerce'
                                              ? Colors.blueAccent
                                              : Colors.black),
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                      dashBoardController.openWidget == true
                                          ? Icons.arrow_drop_down_sharp
                                          : Icons.arrow_drop_up_sharp,
                                      color: dashBoardController
                                          .selectedMainCategory ==
                                          'E-commerce'
                                          ? Colors.blueAccent
                                          : Colors.black),
                                ],
                              ),
                            ),
                            dashBoardController.selectedMainCategory ==
                                'E-commerce' &&
                                dashBoardController.openWidget == true
                                ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 25,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        indexWiseNavigation(
                                            index: StringRes.product);
                                      },
                                      child: Text(
                                        StringRes.product,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(fontSize: 11),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 25,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        indexWiseNavigation(
                                            index: StringRes.productPage);
                                      },
                                      child: Text(
                                        StringRes.productPage,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(fontSize: 11),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 25,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        indexWiseNavigation(
                                            index: StringRes.invoice);
                                      },
                                      child: Text(
                                        StringRes.invoice,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(fontSize: 11),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 25,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        indexWiseNavigation(
                                            index: StringRes.cart);
                                      },
                                      child: Text(
                                        StringRes.cart,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(fontSize: 11),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 25,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        indexWiseNavigation(
                                            index: StringRes.checkOut);
                                      },
                                      child: Text(
                                        StringRes.checkOut,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(fontSize: 11),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 25,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        indexWiseNavigation(
                                            index: StringRes.pricing);
                                      },
                                      child: Text(
                                        StringRes.pricing,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(fontSize: 11),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                                : SizedBox(),
                            //  Align(
                            //   alignment: Alignment.centerLeft,
                            //   child: GestureDetector(
                            //     onTap: () {
                            //       dashBoardController.selectedMainCategory= StringRes.eCommerce;
                            //       setState(() {
                            //
                            //       });
                            //     },
                            //     child: Row(
                            //       crossAxisAlignment: CrossAxisAlignment.start,
                            //       children: [
                            //         Icon(
                            //           Icons.delete_outlined,
                            //           size: 17,
                            //           color:     dashBoardController.selectedMainCategory== StringRes.eCommerce?Colors.blueAccent: Colors.black,
                            //         ),
                            //         SizedBox(
                            //           width: 10,
                            //         ),
                            //         Column(
                            //           mainAxisAlignment: MainAxisAlignment.start,
                            //           children: [
                            //             Text(
                            //               StringRes.eCommerce,
                            //               textAlign: TextAlign.start,
                            //               style: TextStyle(
                            //                   fontWeight: FontWeight.bold,
                            //                   fontSize: 12,
                            //                 color:     dashBoardController.selectedMainCategory== StringRes.eCommerce?Colors.blueAccent: Colors.black,
                            //
                            //               ),
                            //             ),
                            //
                            //           ],
                            //         ),
                            //         Spacer(),
                            //
                            //         Icon(
                            //           Icons.arrow_drop_up_sharp,
                            //           color:     dashBoardController.selectedMainCategory== StringRes.eCommerce?Colors.blueAccent: Colors.black,
                            //
                            //         ),
                            //       ],
                            //     ),
                            //   ),
                            // ),
                            Expanded(
                              child: SizedBox(
                                height: 10,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                onTap: () {
                                  dashBoardController.selectedMainCategory =
                                      StringRes.chat;
                                  indexWiseNavigation(index: StringRes.chat);
                                  setState(() {});
                                },
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.chat,
                                      size: 17,
                                      color: dashBoardController
                                          .selectedMainCategory ==
                                          StringRes.chat
                                          ? Colors.blueAccent
                                          : Colors.black,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          StringRes.chat,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: dashBoardController
                                                .selectedMainCategory ==
                                                StringRes.chat
                                                ? Colors.blueAccent
                                                : Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 10,
                              ),
                            ),
                            ///

                            Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.person,
                                      size: 17,
                                      color: dashBoardController
                                          .selectedMainCategory ==
                                          'user'
                                          ? Colors.blueAccent
                                          : Colors.black),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      dashBoardController.selectedMainCategory =
                                      'user';
                                      setState(() {
                                        if (dashBoardController.selectUser ==
                                            true) {
                                          dashBoardController.selectUser = false;
                                        } else {
                                          dashBoardController.selectUser = true;
                                        }
                                      });
                                    },
                                    child: Text(
                                      StringRes.users,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: dashBoardController
                                              .selectedMainCategory ==
                                              'user'
                                              ? Colors.blueAccent
                                              : Colors.black),
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                      dashBoardController.selectUser == true
                                          ? Icons.arrow_drop_down_sharp
                                          : Icons.arrow_drop_up_sharp,
                                      color: dashBoardController
                                          .selectedMainCategory ==
                                          'user'
                                          ? Colors.blueAccent
                                          : Colors.black),
                                ],
                              ),
                            ),
                            dashBoardController.selectedMainCategory == 'user' &&
                                dashBoardController.selectUser == true
                                ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 25,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        indexWiseNavigation(
                                            index: StringRes.userProfile);
                                      },
                                      child: Text(
                                        StringRes.userProfile,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(fontSize: 11),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 25,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        indexWiseNavigation(
                                            index: StringRes.userEdit);
                                      },
                                      child: Text(
                                        StringRes.userEdit,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(fontSize: 11),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 25,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        indexWiseNavigation(
                                            index: StringRes.userCards);
                                      },
                                      child: Text(
                                        StringRes.userCards,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(fontSize: 11),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                                : SizedBox(),

                            // Align(
                            //   alignment: Alignment.centerLeft,
                            //   child: GestureDetector(
                            //     onTap: () {
                            //       dashBoardController.selectedMainCategory =
                            //           StringRes.users;
                            //       setState(() {});
                            //     },
                            //     child: Row(
                            //       crossAxisAlignment: CrossAxisAlignment.start,
                            //       children: [
                            //         Icon(
                            //           Icons.people,
                            //           size: 17,
                            //           color: dashBoardController
                            //                       .selectedMainCategory ==
                            //                   StringRes.users
                            //               ? Colors.blueAccent
                            //               : Colors.black,
                            //         ),
                            //         SizedBox(
                            //           width: 10,
                            //         ),
                            //         Column(
                            //           mainAxisAlignment: MainAxisAlignment.start,
                            //           children: [
                            //             Text(
                            //               StringRes.users,
                            //               textAlign: TextAlign.start,
                            //               style: TextStyle(
                            //                 fontWeight: FontWeight.bold,
                            //                 fontSize: 12,
                            //                 color: dashBoardController
                            //                             .selectedMainCategory ==
                            //                         StringRes.users
                            //                     ? Colors.blueAccent
                            //                     : Colors.black,
                            //               ),
                            //             ),
                            //           ],
                            //         ),
                            //         Spacer(),
                            //         Icon(
                            //           Icons.arrow_drop_up_sharp,
                            //           color: dashBoardController
                            //                       .selectedMainCategory ==
                            //                   StringRes.users
                            //               ? Colors.blueAccent
                            //               : Colors.black,
                            //         ),
                            //       ],
                            //     ),
                            //   ),
                            // ),
                            ///
                            Expanded(
                              child: SizedBox(
                                height: 15,
                              ),
                            ),
                            Container(
                              height: 0.5,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 15,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                StringRes.formsTable.toUpperCase(),
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 10,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                onTap: () {
                                  dashBoardController.selectedMainCategory =
                                      StringRes.forms;
                                  setState(() {});
                                },
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.file_copy_outlined,
                                      size: 17,
                                      color: dashBoardController
                                          .selectedMainCategory ==
                                          StringRes.forms
                                          ? Colors.blueAccent
                                          : Colors.black,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          StringRes.forms,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: dashBoardController
                                                .selectedMainCategory ==
                                                StringRes.forms
                                                ? Colors.blueAccent
                                                : Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_drop_up_sharp,
                                      color: dashBoardController
                                          .selectedMainCategory ==
                                          StringRes.forms
                                          ? Colors.blueAccent
                                          : Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 10,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                onTap: () {
                                  dashBoardController.selectedMainCategory =
                                      StringRes.tables;
                                  indexWiseNavigation(index: StringRes.tables);
                                  setState(() {});
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.table,
                                      size: 17,
                                      color: dashBoardController
                                          .selectedMainCategory ==
                                          StringRes.tables
                                          ? Colors.blueAccent
                                          : Colors.black,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      StringRes.tables,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: dashBoardController
                                            .selectedMainCategory ==
                                            StringRes.tables
                                            ? Colors.blueAccent
                                            : Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 15,
                              ),
                            ),
                            Container(
                              height: 0.5,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 15,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                StringRes.components.toUpperCase(),
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 10,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                onTap: () {
                                  dashBoardController.selectedMainCategory =
                                      StringRes.authPages;
                                  setState(() {});
                                },
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.verified_user_rounded,
                                      size: 17,
                                      color: dashBoardController
                                          .selectedMainCategory ==
                                          StringRes.authPages
                                          ? Colors.blueAccent
                                          : Colors.black,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          StringRes.authPages,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: dashBoardController
                                                .selectedMainCategory ==
                                                StringRes.authPages
                                                ? Colors.blueAccent
                                                : Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_drop_up_sharp,
                                      color: dashBoardController
                                          .selectedMainCategory ==
                                          StringRes.authPages
                                          ? Colors.blueAccent
                                          : Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 10,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                onTap: () {
                                  dashBoardController.selectedMainCategory =
                                      StringRes.uiKits;
                                  setState(() {});
                                },
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.signal_cellular_nodata_outlined,
                                      size: 17,
                                      color: dashBoardController
                                          .selectedMainCategory ==
                                          StringRes.uiKits
                                          ? Colors.blueAccent
                                          : Colors.black,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          StringRes.uiKits,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: dashBoardController
                                                .selectedMainCategory ==
                                                StringRes.uiKits
                                                ? Colors.blueAccent
                                                : Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_drop_up_sharp,
                                      color: dashBoardController
                                          .selectedMainCategory ==
                                          StringRes.uiKits
                                          ? Colors.blueAccent
                                          : Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 10,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.send,
                                      size: 17,
                                      color: dashBoardController
                                          .selectedMainCategory ==
                                          StringRes.buttons
                                          ? Colors.blueAccent
                                          : Colors.black),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      dashBoardController.selectedMainCategory =
                                          StringRes.buttons;
                                      setState(() {
                                        if (dashBoardController.buttons ==
                                            true) {
                                          dashBoardController.buttons = false;
                                        } else {
                                          dashBoardController.buttons = true;
                                        }
                                      });
                                    },
                                    child: Text(
                                      StringRes.buttons,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: dashBoardController.buttons ==
                                              StringRes.buttons
                                              ? Colors.blueAccent
                                              : Colors.black),
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                      dashBoardController.buttons == true
                                          ? Icons.arrow_drop_down_sharp
                                          : Icons.arrow_drop_up_sharp,
                                      color: dashBoardController
                                          .selectedMainCategory ==
                                          StringRes.buttons
                                          ? Colors.blueAccent
                                          : Colors.black),
                                ],
                              ),
                            ),
                            dashBoardController.selectedMainCategory ==  StringRes.buttons &&
                                dashBoardController.buttons == true
                                ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 25,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        indexWiseNavigation(
                                            index: StringRes.DefaultStyle);
                                      },
                                      child: Text(
                                        StringRes.DefaultStyle,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(fontSize: 11),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 25,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        indexWiseNavigation(
                                            index: StringRes.FlatStyle);
                                      },
                                      child: Text(
                                        StringRes.FlatStyle,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(fontSize: 11),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 25,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        indexWiseNavigation(
                                            index: StringRes.EdgeStyle);
                                      },
                                      child: Text(
                                        StringRes.EdgeStyle,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(fontSize: 11),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 25,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        indexWiseNavigation(
                                            index: StringRes.raiseStyle);
                                      },
                                      child: Text(
                                        StringRes.raiseStyle,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(fontSize: 11),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                                : SizedBox(),
                            // Align(
                            //   alignment: Alignment.centerLeft,
                            //   child: GestureDetector(
                            //     onTap: () {
                            //       dashBoardController.selectedMainCategory =
                            //           StringRes.buttons;
                            //       setState(() {});
                            //     },
                            //     child: Row(
                            //       crossAxisAlignment: CrossAxisAlignment.start,
                            //       children: [
                            //         Icon(
                            //           Icons.send,
                            //           size: 17,
                            //           color: dashBoardController
                            //                       .selectedMainCategory ==
                            //                   StringRes.buttons
                            //               ? Colors.blueAccent
                            //               : Colors.black,
                            //         ),
                            //         SizedBox(
                            //           width: 10,
                            //         ),
                            //         Column(
                            //           mainAxisAlignment: MainAxisAlignment.start,
                            //           children: [
                            //             Text(
                            //               StringRes.buttons,
                            //               textAlign: TextAlign.start,
                            //               style: TextStyle(
                            //                 fontWeight: FontWeight.bold,
                            //                 color: dashBoardController
                            //                             .selectedMainCategory ==
                            //                         StringRes.buttons
                            //                     ? Colors.blueAccent
                            //                     : Colors.black,
                            //                 fontSize: 12,
                            //               ),
                            //             ),
                            //           ],
                            //         ),
                            //         Spacer(),
                            //         Icon(
                            //           Icons.arrow_drop_up_sharp,
                            //           color: dashBoardController
                            //                       .selectedMainCategory ==
                            //                   StringRes.buttons
                            //               ? Colors.blueAccent
                            //               : Colors.black,
                            //         ),
                            //
                            //       ],
                            //     ),
                            //   ),
                            // ),
                            Expanded(
                              child: SizedBox(
                                height: 15,
                              ),
                            ),
                            Container(
                              height: 0.5,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 15,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                StringRes.miscellaneous.toUpperCase(),
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 10,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                onTap: () {
                                  dashBoardController.selectedMainCategory =
                                      StringRes.faq;
                                  indexWiseNavigation(index: StringRes.faq);
                                  setState(() {});
                                },
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.face,
                                      size: 17,
                                      color: dashBoardController
                                          .selectedMainCategory ==
                                          StringRes.faq
                                          ? Colors.blueAccent
                                          : Colors.black,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          StringRes.faq,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: dashBoardController
                                                  .selectedMainCategory ==
                                                  StringRes.faq
                                                  ? Colors.blueAccent
                                                  : Colors.black,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 10,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.blur_circular_rounded,
                                      size: 17,
                                      color: dashBoardController
                                          .selectedMainCategory ==
                                          StringRes.menulevel
                                          ? Colors.blueAccent
                                          : Colors.black),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      dashBoardController.selectedMainCategory =
                                          StringRes.menulevel;
                                      setState(() {
                                        if (dashBoardController.Menulevel ==
                                            true) {
                                          dashBoardController.Menulevel = false;
                                        } else {
                                          dashBoardController.Menulevel = true;
                                        }
                                      });
                                    },
                                    child: Text(
                                      StringRes.menulevel,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: dashBoardController.Menulevel ==
                                              StringRes.menulevel
                                              ? Colors.blueAccent
                                              : Colors.black),
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                      dashBoardController.Menulevel == true
                                          ? Icons.arrow_drop_down_sharp
                                          : Icons.arrow_drop_up_sharp,
                                      color: dashBoardController
                                          .selectedMainCategory ==
                                          StringRes.menulevel
                                          ? Colors.blueAccent
                                          : Colors.black),
                                ],
                              ),
                            ),
                            dashBoardController.selectedMainCategory ==  StringRes.menulevel &&
                                dashBoardController.Menulevel == true
                                ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 25,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        indexWiseNavigation(
                                            index: StringRes.level1);
                                      },
                                      child: Text(
                                        StringRes.level1,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(fontSize: 11),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 25,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        indexWiseNavigation(
                                            index: StringRes.level2);
                                      },
                                      child: Text(
                                        StringRes.level2,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(fontSize: 11),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                                : SizedBox(),
                            Expanded(
                              child: SizedBox(
                                height: 10,
                              ),
                            ),

                            Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                onTap: () {
                                  dashBoardController.selectedMainCategory =
                                      StringRes.fileManager;
                                  indexWiseNavigation(index: StringRes.fileManager);
                                  setState(() {});
                                },
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.file_copy_outlined,
                                      size: 17,
                                      color: dashBoardController
                                          .selectedMainCategory ==
                                          StringRes.fileManager
                                          ? Colors.blueAccent
                                          : Colors.black,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          StringRes.fileManager,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: dashBoardController
                                                  .selectedMainCategory ==
                                                  StringRes.fileManager
                                                  ? Colors.blueAccent
                                                  : Colors.black,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
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
                );
              },
            ));
      },
    );
  }
}

///expansiontile

// child: SingleChildScrollView(
//   child: Column(
//     children: [
//       Align(
//         alignment: Alignment.centerLeft,
//         child: Text(
//           StringRes.general.toUpperCase(),
//           textAlign: TextAlign.start,
//           style: TextStyle(
//               fontWeight: FontWeight.bold, fontSize: 13),
//         ),
//       ),
//
//       ListView.builder(
//         shrinkWrap: true,
//         physics: const NeverScrollableScrollPhysics(),
//         itemCount: dashBoardController.GENERAL
//             .length,
//         itemBuilder: (BuildContext context, int index) {
//           return Card(
//             borderOnForeground: false,
//             elevation: 0,
//             child: ExpansionTile(
//               shape: RoundedRectangleBorder(
//                 side: BorderSide.none,
//               ),
//               title: Row(
//                 children: [
//                   Icon(
//                     color: Colors.grey,
//                     dashBoardController.iconTypesHome[index],
//                     size: 17,
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Text(dashBoardController.GENERAL[index],
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 12)),
//                 ],
//               ),
//               iconColor: Colors.blueAccent,
//               textColor: Colors.blueAccent,
//               collapsedTextColor: Colors.black.withOpacity(0.8),
//               collapsedIconColor: Colors.black.withOpacity(0.8),
//               children: [
//             index==1?   Column(
//               children: [
//                 Row(
//                   children: [
//                     SizedBox(width: 50,),
//                     Text("General"),
//                   ],
//                 ),
//                 SizedBox(height: 20,),
//                 Row(
//                   children: [
//                     SizedBox(width: 50,),
//                     Text("chart"),
//                   ],
//                 ),
//               ],
//             ):SizedBox(),
//               ],
//             ),
//           );
//
//         },
//       ),
//       Divider(color: Colors.grey.withOpacity(0.2),),
//       Align(
//         alignment: Alignment.centerLeft,
//         child: Text(
//           StringRes.application
//               .toUpperCase(),
//           textAlign: TextAlign.start,
//           style: TextStyle(
//               fontWeight: FontWeight.bold, fontSize: 13),
//         ),
//       ),
//
//       ListView.builder(
//         shrinkWrap: true,
//         physics: const NeverScrollableScrollPhysics(),
//         itemCount: dashBoardController.APPLACATION
//             .length,
//         itemBuilder: (BuildContext context, int index) {
//           return Card(
//             borderOnForeground: false,
//             elevation: 0,
//             child: ExpansionTile(
//               shape: RoundedRectangleBorder(
//                 side: BorderSide.none,
//               ),
//               title: Row(
//                 children: [
//                   Icon(
//                     color: Colors.grey,
//                     dashBoardController.iconTypesApplication[index],
//                     size: 17,
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Text(dashBoardController.APPLACATION[index],
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 12)),
//                 ],
//               ),
//               iconColor: Colors.blueAccent,
//               textColor: Colors.blueAccent,
//               collapsedTextColor: Colors.black.withOpacity(0.8),
//               collapsedIconColor: Colors.black.withOpacity(0.8),
//               children: [
//                 GestureDetector(
//
//                     onTap: () {
//                       // indexWiseNavigation(index: 'General',);
//                     },
//                     child: Text("General")),
//                 Text("chart"),
//               ],
//             ),
//           );
//           // SizedBox(
//           //   height: 47,
//           //   child: Row(
//           //     mainAxisAlignment:
//           //         MainAxisAlignment.spaceBetween,
//           //     children: [
//           //       Expanded(
//           //         child: GestureDetector(
//           //           onTap: () {
//           //
//           //             indexWiseNavigation(index: dashBoardController.items[index]);
//           //           },
//           //           child: Container(
//           //             margin:
//           //                 const EdgeInsets.symmetric(vertical: 1),
//           //             height: 45,
//           //             padding: const EdgeInsets.symmetric(
//           //                 horizontal: 20, vertical: 5),
//           //             decoration:
//           //                 const BoxDecoration(color: Colors.white24),
//           //             child: Align(
//           //               alignment: Alignment.centerLeft,
//           //               child: Text(
//           //                 dashBoardController.items[index],
//           //                 textAlign: TextAlign.start,
//           //               ),
//           //             ),
//           //           ),
//           //         ),
//           //       ),
//           //       widget.screenName == dashBoardController.items[index]
//           //           ? Container(
//           //               width: 4,
//           //               height: 47,
//           //               alignment: Alignment.centerRight,
//           //               decoration: BoxDecoration(
//           //                   color: Colors.brown,
//           //                   borderRadius:
//           //                       BorderRadius.circular(3)),
//           //             )
//           //           : SizedBox(),
//           //     ],
//           //   ));
//         },
//       ),
//       Divider(color: Colors.grey.withOpacity(0.2),),
//
//       Align(
//         alignment: Alignment.centerLeft,
//         child: Text(
//           StringRes.formsTable.toUpperCase(),
//           textAlign: TextAlign.start,
//           style: TextStyle(
//               fontWeight: FontWeight.bold, fontSize: 13),
//         ),
//       ),
//
//       ListView.builder(
//         shrinkWrap: true,
//         physics: const NeverScrollableScrollPhysics(),
//         itemCount: dashBoardController.FORMSTABlE
//             .length,
//         itemBuilder: (BuildContext context, int index) {
//           return Card(
//             borderOnForeground: false,
//             elevation: 0,
//             child: ExpansionTile(
//               shape: RoundedRectangleBorder(
//                 side: BorderSide.none,
//               ),
//               title: Row(
//                 children: [
//                   Icon(
//                     color: Colors.grey,
//                     dashBoardController.iconTypeFormTable[index],
//                     size: 17,
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Text(dashBoardController.FORMSTABlE[index],
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 12)),
//                 ],
//               ),
//               iconColor: Colors.blueAccent,
//               textColor: Colors.blueAccent,
//               collapsedTextColor: Colors.black.withOpacity(0.8),
//               collapsedIconColor: Colors.black.withOpacity(0.8),
//               children: [
//                 Text("General"),
//                 Text("chart"),
//               ],
//             ),
//           );
//           // SizedBox(
//           //   height: 47,
//           //   child: Row(
//           //     mainAxisAlignment:
//           //         MainAxisAlignment.spaceBetween,
//           //     children: [
//           //       Expanded(
//           //         child: GestureDetector(
//           //           onTap: () {
//           //
//           //             indexWiseNavigation(index: dashBoardController.items[index]);
//           //           },
//           //           child: Container(
//           //             margin:
//           //                 const EdgeInsets.symmetric(vertical: 1),
//           //             height: 45,
//           //             padding: const EdgeInsets.symmetric(
//           //                 horizontal: 20, vertical: 5),
//           //             decoration:
//           //                 const BoxDecoration(color: Colors.white24),
//           //             child: Align(
//           //               alignment: Alignment.centerLeft,
//           //               child: Text(
//           //                 dashBoardController.items[index],
//           //                 textAlign: TextAlign.start,
//           //               ),
//           //             ),
//           //           ),
//           //         ),
//           //       ),
//           //       widget.screenName == dashBoardController.items[index]
//           //           ? Container(
//           //               width: 4,
//           //               height: 47,
//           //               alignment: Alignment.centerRight,
//           //               decoration: BoxDecoration(
//           //                   color: Colors.brown,
//           //                   borderRadius:
//           //                       BorderRadius.circular(3)),
//           //             )
//           //           : SizedBox(),
//           //     ],
//           //   ));
//         },
//       ),
//       Divider(color: Colors.grey.withOpacity(0.2),),
//       Align(
//         alignment: Alignment.centerLeft,
//         child: Text(
//           StringRes.components.toUpperCase(),
//           textAlign: TextAlign.start,
//           style: TextStyle(
//               fontWeight: FontWeight.bold, fontSize: 13),
//         ),
//       ),
//
//
//       ListView.builder(
//         shrinkWrap: true,
//         physics: const NeverScrollableScrollPhysics(),
//         itemCount: dashBoardController.COMPONTS
//             .length,
//         itemBuilder: (BuildContext context, int index) {
//           return Card(
//             borderOnForeground: false,
//             elevation: 0,
//
//             child: ExpansionTile(
//               onExpansionChanged: (value) {
//
//                 if(value == true ){
//
//
//                   // dashBoardController.update(['allBool']);
//                   setState(() {
//
//                     // dashBoardController.onComponentChange(index);
//                     dashBoardController.componentBool= List.generate(3, (index) => false);
//                     dashBoardController.componentBool[index]= true;
//                   });
//
//                 }
//
//
//               },
//               initiallyExpanded: dashBoardController.componentBool[index],
//
//               shape: RoundedRectangleBorder(
//                 side: BorderSide.none,
//               ),
//
//
//               title: Row(
//                 children: [
//                   Icon(
//                     color: Colors.grey,
//                     dashBoardController.iconTypesComponent[index],
//                     size: 17,
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Text(
//                       dashBoardController.COMPONTS[index],
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 12
//                       )),
//                 ],
//               ),
//               dense: true,
//               iconColor: Colors.blueAccent,
//               textColor: Colors.blueAccent,
//               collapsedTextColor: Colors.black.withOpacity(0.8),
//               collapsedIconColor: Colors.black.withOpacity(0.8),
//               children: [
//                 Text("General"),
//                 Text("chart"),
//               ],
//             ),
//           );
//           // SizedBox(
//           //   height: 47,
//           //   child: Row(
//           //     mainAxisAlignment:
//           //         MainAxisAlignment.spaceBetween,
//           //     children: [
//           //       Expanded(
//           //         child: GestureDetector(
//           //           onTap: () {
//           //
//           //             indexWiseNavigation(index: dashBoardController.items[index]);
//           //           },
//           //           child: Container(
//           //             margin:
//           //                 const EdgeInsets.symmetric(vertical: 1),
//           //             height: 45,
//           //             padding: const EdgeInsets.symmetric(
//           //                 horizontal: 20, vertical: 5),
//           //             decoration:
//           //                 const BoxDecoration(color: Colors.white24),
//           //             child: Align(
//           //               alignment: Alignment.centerLeft,
//           //               child: Text(
//           //                 dashBoardController.items[index],
//           //                 textAlign: TextAlign.start,
//           //               ),
//           //             ),
//           //           ),
//           //         ),
//           //       ),
//           //       widget.screenName == dashBoardController.items[index]
//           //           ? Container(
//           //               width: 4,
//           //               height: 47,
//           //               alignment: Alignment.centerRight,
//           //               decoration: BoxDecoration(
//           //                   color: Colors.brown,
//           //                   borderRadius:
//           //                       BorderRadius.circular(3)),
//           //             )
//           //           : SizedBox(),
//           //     ],
//           //   ));
//         },
//       ),
//       Divider(color: Colors.grey.withOpacity(0.2),),
//       Align(
//         alignment: Alignment.centerLeft,
//         child: Text(
//           StringRes.miscellaneous.toUpperCase(),
//           textAlign: TextAlign.start,
//           style: TextStyle(
//               fontWeight: FontWeight.bold, fontSize: 13),
//         ),
//       ),
//
//       ListView.builder(
//         shrinkWrap: true,
//         physics: const NeverScrollableScrollPhysics(),
//         itemCount: dashBoardController.MISCELLANEOUS
//             .length,
//         itemBuilder: (BuildContext context, int index) {
//           return Card(
//             borderOnForeground: false,
//             elevation: 0,
//             child: ExpansionTile(
//               onExpansionChanged: (value) {
//
//               },
//               leading: Icon(  dashBoardController.iconTypeMiscellaneous[index],
//                 size: 17,),
//               iconColor: Colors.blueAccent,
//               textColor: Colors.blueAccent,
//               collapsedTextColor: Colors.black.withOpacity(0.8),
//               collapsedIconColor: Colors.black.withOpacity(0.8),
//               shape: RoundedRectangleBorder(
//                 side: BorderSide.none,
//               ),
//               title: GestureDetector(
//                 onTap: () {
//
//                 },
//                 child: Row(
//                   children: [
//
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Text(dashBoardController.MISCELLANEOUS[index],
//
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 12)),
//                   ],
//                 ),
//               ),
//
//
//
//
//               children: [
//                 Text("General"),
//                 Text("chart"),
//               ],
//             ),
//           );
//
//           // SizedBox(
//           //   height: 47,
//           //   child: Row(
//           //     mainAxisAlignment:
//           //         MainAxisAlignment.spaceBetween,
//           //     children: [
//           //       Expanded(
//           //         child: GestureDetector(
//           //           onTap: () {
//           //
//           //             indexWiseNavigation(index: dashBoardController.items[index]);
//           //           },
//           //           child: Container(
//           //             margin:
//           //                 const EdgeInsets.symmetric(vertical: 1),
//           //             height: 45,
//           //             padding: const EdgeInsets.symmetric(
//           //                 horizontal: 20, vertical: 5),
//           //             decoration:
//           //                 const BoxDecoration(color: Colors.white24),
//           //             child: Align(
//           //               alignment: Alignment.centerLeft,
//           //               child: Text(
//           //                 dashBoardController.items[index],
//           //                 textAlign: TextAlign.start,
//           //               ),
//           //             ),
//           //           ),
//           //         ),
//           //       ),
//           //       widget.screenName == dashBoardController.items[index]
//           //           ? Container(
//           //               width: 4,
//           //               height: 47,
//           //               alignment: Alignment.centerRight,
//           //               decoration: BoxDecoration(
//           //                   color: Colors.brown,
//           //                   borderRadius:
//           //                       BorderRadius.circular(3)),
//           //             )
//           //           : SizedBox(),
//           //     ],
//           //   ));
//         },
//       ),
//     ],
//   ),
// ),
