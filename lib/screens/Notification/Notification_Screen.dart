import 'package:buzz/commom_widget/common_appbar.dart';

import 'package:buzz/screens/Notification/CommonContainer.dart';
import 'package:buzz/utils/Assets_res.dart';
import 'package:buzz/utils/Color.dart';
import 'package:buzz/utils/string.dart';
import 'package:buzz/utils/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:toastification/toastification.dart';



class NotificationScreen extends StatefulWidget {
  NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List color1 = [
    ColorRes.cream,
    ColorRes.parrot,
    ColorRes.queenpink,
    ColorRes.rediam,
    ColorRes.orange
  ];

  List color2 = [
    ColorRes.darkblue,
    ColorRes.parrot,
    ColorRes.sky,
    ColorRes.yellow,
    ColorRes.orange
  ];

  final List<OverlayEntry> _notifications = [];

  OverlayEntry? overlayEntry;

  List bname = ['Default', 'Success', 'Info', 'Warning', 'Danger'];

  final List<Map<String, dynamic>> notificationmsg = [
    {
      'name': 'Hello!',
      'Msg': 'I am a default notification.',
      'image': AssetRes.defaulti
    },
    {
      'name': 'Well Done!',
      'Msg': 'You just submit your resume successfully.',
      'image': AssetRes.sucess
    },
    {
      'name': 'Reminder',
      'Msg': 'You have a meeting at 10:30 AM.',
      'image': AssetRes.remeber
    },
    {
      'name': 'Warning!',
      'Msg': 'The data presented here can be change.',
      'image': AssetRes.warning
    },
    {
      'name': 'Sorry!',
      'Msg': 'Could not complete your trasnsaction',
      'image': AssetRes.danger
    },
  ];

  final List<Map<String, dynamic>> hideandshowbutton = [
    {
      'name': 'Show Notification',
      'color': ColorRes.cream,

    },
    {
      'name': 'Hide Notification',
      'color': ColorRes.orange,


    },

  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;

    return
      ResponsiveBuilder(
          builder: (BuildContext context, SizingInformation sizingInformation) {
            if (sizingInformation.isDesktop) {
              width = 900;
              height = 1000;
            } else if (sizingInformation.isTablet) {
              width = 550;
              height = 900;
            } else if (sizingInformation.isMobile) {
              width = 350;
            }

            return
              Scaffold(
                backgroundColor: ColorRes.background,
                body: Column(
                  children: [
                    CommonAppbar(
                      name1: Strings.raisebuttons,
                      name2: Strings.buttons,
                      name3: Strings.raisebuttons,
                    ),

                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding:
                          const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    Strings.notification,
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: ColorRes.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  Icon(Icons.home_outlined,
                                      color: ColorRes.gray),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "/",
                                    style: TextStyle(
                                        fontSize: 20, color: ColorRes.gray),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(Strings.buttons, style: TextStyle(
                                      color: ColorRes.black, fontSize: 15)),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "/",
                                    style: TextStyle(
                                        fontSize: 20, color: ColorRes.gray),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    Strings.notification,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: ColorRes.blue,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),


                              CommoncontainerNotificitons(
                                  buttonname: Strings.notificationAlert,
                                  Widgets:
                                  Wrap(
                                    children: List<Widget>.generate(
                                        color1.length,
                                            (index) {
                                          return Padding(
                                            padding: const EdgeInsets.all(5),
                                            child:
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: color2[index],


                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius
                                                          .circular(5)
                                                  ),
                                                  padding: EdgeInsets.only(
                                                    left: 35, right: 35,)
                                              ),
                                              onPressed: () {
                                                showCustomwithouticonNotification(
                                                    context,
                                                    notificationmsg[index]['name'],
                                                    notificationmsg[index]['Msg'],
                                                    color2[index]);
                                              },
                                              child: Text(bname[index],
                                                style: TextStyle(
                                                    color: index == 6 ? Colors
                                                        .black : ColorRes
                                                        .white),),
                                            ),
                                          );
                                        }),
                                  )),
                              SizedBox(height: 20,),


                              CommoncontainerNotificitons(
                                  buttonname: Strings.notificationicons,
                                  Widgets:
                                  Wrap(
                                    children: List<Widget>.generate(
                                        color2.length,
                                            (index) {
                                          return Padding(
                                            padding: const EdgeInsets.all(5),
                                            child:
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: color1[index],


                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius
                                                          .circular(5)
                                                  ),
                                                  padding: EdgeInsets.only(
                                                    left: 35, right: 35,)
                                              ),
                                              onPressed: () {
                                                showCustomNotification(context,
                                                    notificationmsg[index]['name'],
                                                    notificationmsg[index]['Msg'],
                                                    notificationmsg[index]['image'],
                                                    color2[index],index);
                                              },
                                              child: Text(bname[index],
                                                style: TextStyle(
                                                    color: index == 6 ? Colors
                                                        .black : ColorRes
                                                        .white),),
                                            ),
                                          );
                                        }),
                                  )),
                              SizedBox(height: 20,),


                              CommoncontainerNotificitons(
                                  buttonname: Strings.autonotification,
                                  Widgets:
                                  Wrap(
                                    children: List<Widget>.generate(
                                        color2.length,
                                            (index) {
                                          return Padding(
                                            padding: const EdgeInsets.all(5),
                                            child:
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: color1[index],


                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius
                                                          .circular(5)
                                                  ),
                                                  padding: EdgeInsets.only(
                                                    left: 35, right: 35,)
                                              ),
                                              onPressed: () {

                                                showCustomNotification(context,notificationmsg[index]['name'],notificationmsg[index]['Msg'],
                                                notificationmsg[index]['image'],color2[index],index);
                                              },
                                              child: Text(bname[index],
                                                style: TextStyle(
                                                    color: index == 6 ? Colors
                                                        .black : ColorRes
                                                        .white),),
                                            ),
                                          );
                                        }),
                                  )),
                              SizedBox(height: 20,),


                              CommoncontainerNotificitons(
                                  buttonname: Strings.Usingnotifiction,
                                  Widgets:
                                  Wrap(
                                    children: List<Widget>.generate(
                                        hideandshowbutton.length,
                                            (index) {
                                          return Padding(
                                            padding: const EdgeInsets.all(5),
                                            child:
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: hideandshowbutton[index]['color'],


                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius
                                                          .circular(5)
                                                  ),
                                                  padding: EdgeInsets.only(
                                                    left: 35, right: 35,)
                                              ),
                                              onPressed: () {


                                                // index == 1
                                                //     ? _removeAllNotifications()
                                                //     : _showNotification(context,
                                                //     notificationmsg[index]['name'],
                                                //     notificationmsg[index]['Msg'],notificationmsg[index]['image'],color2[index]
                                                // );
                                                showCustomNotification1(context,
                                                    notificationmsg[index]['name'],
                                                    notificationmsg[index]['Msg'],
                                                    notificationmsg[index]['image'],
                                                    color2[index],index
                                                );
                                              },
                                              child: Text(
                                                hideandshowbutton[index]["name"],
                                                style: TextStyle(
                                                    color: index == 6 ? Colors
                                                        .black : ColorRes
                                                        .white),),
                                            ),
                                          );
                                        }),
                                  )),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
          });
  }

  //     void _showNotification(BuildContext context, String title, String message,
  //         String icon, Color color) {
  //       overlayEntry = OverlayEntry(
  //         builder: (BuildContext context) {
  //           return Positioned(
  //             top: 50.0 + _notifications.length * 70.0,
  //             // Adjust position based on number of notifications
  //             left: MediaQuery
  //                 .of(context)
  //                 .size
  //                 .width * 0.1,
  //             width: MediaQuery
  //                 .of(context)
  //                 .size
  //                 .width * 0.8,
  //             child: Material(
  //               color: Colors.transparent,
  //               child: Container(
  //                 margin: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
  //                 padding: EdgeInsets.all(12),
  //                 decoration: BoxDecoration(
  //                   color: Colors.white,
  //                   borderRadius: BorderRadius.circular(10),
  //                   boxShadow: [
  //                     BoxShadow(
  //                       color: Colors.black12,
  //                       blurRadius: 5,
  //                       spreadRadius: 1,
  //                     ),
  //                   ],
  //                 ),
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   children: [
  //                     Container(
  //                       width: 3,
  //                       height: 57,
  //                       decoration: BoxDecoration(
  //                         color: color,
  //                         borderRadius: BorderRadius.circular(5),
  //                       ),
  //                     ),
  //                     SizedBox(width: 10),
  //                     ImageIcon(AssetImage(icon), size: 30, color: color),
  //                     SizedBox(width: 10),
  //                     SizedBox(width: 5),
  //                     Expanded(
  //                       child: Column(
  //                         crossAxisAlignment: CrossAxisAlignment.start,
  //                         children: [
  //                           Text(
  //                             title,
  //                             style: TextStyle(fontSize: 16, color: Colors.black),
  //                           ),
  //                           SizedBox(height: 3),
  //                           Text(
  //                             message,
  //                             style: TextStyle(fontSize: 14, color: Colors.black54),
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                     SizedBox(width: 10),
  //                     GestureDetector(
  //                       onTap: () {
  //                         overlayEntry!
  //                             .remove(); // Remove the specific notification
  //                         setState(() {
  //                           _notifications.remove(overlayEntry);
  //                         });
  //                       },
  //                       child: Icon(Icons.close, color: Colors.black38, size: 20),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           );
  //         },
  //       );
  //
  //       setState(() {
  //         _notifications.add(overlayEntry!);
  //       });
  //       Overlay.of(context).insert(overlayEntry!);
  //     }
  //
  // void _removeAllNotifications() {
  //   setState(() {
  //     for (var notification in _notifications) {
  //       notification.remove();
  //     }
  //     _notifications.clear();
  //   });
  // }
  void showCustomNotification1(BuildContext context, String title,
      String message, String icon, Color color,index) {
    index ==1? toastification.dismissAll():


    toastification.showCustom(
      context: context,
      builder: (BuildContext context, ToastificationItem holder) {
        return
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 3, height: 57, decoration: BoxDecoration(color: color,
                    borderRadius: BorderRadius.circular(5,)

                ),),
                SizedBox(width: 10,),
                ImageIcon(AssetImage(icon), size: 30, color: color,),
                SizedBox(width: 10,),
                SizedBox(width: 5,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontSize: 16, color: ColorRes.black),
                      ),
                      SizedBox(height: 3),
                      Text(
                        message,
                        style: TextStyle(fontSize: 14, color: ColorRes.textcolor),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {

                  },
                  child: Icon(Icons.close, color: Colors.black38, size: 20),
                ),
              ],
            ),
          );
      },

    );
  }
  void showCustomNotification(BuildContext context, String title,
      String message, String icon, Color color,index) {


    toastification.showCustom(
      context: context,
      builder: (BuildContext context, ToastificationItem holder) {
        return
          Container(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 3, height: 57, decoration: BoxDecoration(color: color,
                  borderRadius: BorderRadius.circular(5,)

              ),),
              SizedBox(width: 10,),
              ImageIcon(AssetImage(icon), size: 30, color: color,),
              SizedBox(width: 10,),
              SizedBox(width: 5,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontSize: 16, color: ColorRes.black),
                    ),
                    SizedBox(height: 3),
                    Text(
                      message,
                      style: TextStyle(fontSize: 14, color: ColorRes.textcolor),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  if(index==0){
                  toastification.dismiss(holder);}
                },
                child: Icon(Icons.close, color: Colors.black38, size: 20),
              ),
            ],
          ),
        );
      },
      autoCloseDuration: Duration(seconds: 5),
    );
  }

  void showCustomwithouticonNotification(BuildContext context, String title,
      String message, Color color) {


    toastification.showCustom(
      context: context,
      builder: (BuildContext context, ToastificationItem holder) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 3, height: 57, decoration: BoxDecoration(color: color,
                  borderRadius: BorderRadius.circular(5,)

              ),),

              SizedBox(width: 10,),
              SizedBox(width: 5,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontSize: 16, color: ColorRes.black),
                    ),
                    SizedBox(height: 3),
                    Text(
                      message,
                      style: TextStyle(fontSize: 14, color: ColorRes.textcolor),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  toastification.dismiss(holder);

                },
                child: Icon(Icons.close, color: Colors.black38, size: 20),
              ),
            ],
          ),
        );
      },

    );
  }
}
