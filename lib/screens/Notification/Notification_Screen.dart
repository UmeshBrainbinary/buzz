import 'package:buzz/commoncontainer.dart';
import 'package:buzz/utils/Color.dart';
import 'package:buzz/utils/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../commom_widget/common_appbar.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});
  final List<Map<String, dynamic>> buttonName = [
    {
      'name': 'Primary Button',
      'color': ColorRes.purple,
    },
    {
      'name': 'Secondary Button',
      'color': ColorRes.darkpink,
    },
    {
      'name': 'Success Button',
      'color': ColorRes.parrot,
    },
    {
      'name': 'info Button',
      'color': ColorRes.sky,
    },
    {
      'name': 'Warning Button',
      'color': ColorRes.yellow,
    },
    {
      'name': 'Danger Button',
      'color': ColorRes.orange,
    },

    {
      'name': 'Light Button',
      'color': ColorRes.bwhite,
    },
    // Add more messages here
  ];
  List bname = ['D', 'Input', 'Submit', 'Button'];
  final List<Map<String, dynamic>> loder = [
    {
      'name': 'Primary',
      'Widget': CircularProgressIndicator(
        color: ColorRes.white,
      ),
    },
    {
      'name': 'Process',
      'Widget': CupertinoActivityIndicator(
        color: ColorRes.white,
      ),
    },
    {
      'name': 'Sucess',
      'Widget': SizedBox(),
    },
  ];
  final List<Map<String, dynamic>> iconname = [
    {
      'name': 'Add',
      'icon': Icon(
        Icons.add,
        color: ColorRes.white,
        size: 16,
      ),
      'color': ColorRes.purple,
    },
    {
      'name': 'Edite',
      'icon': Icon(Icons.edit, color: ColorRes.white, size: 16),
      'color': ColorRes.darkpink,
    },
    {
      'name': 'Delete',
      'icon': Icon(Icons.delete, color: ColorRes.white, size: 16),
      'color': ColorRes.orange,
    },
  ];

  List icons = [
    Icon(
      Icons.add,
      color: ColorRes.purple,
      size: 25,
    ),
    Icon(Icons.edit, color: ColorRes.darkpink, size: 25),
    Icon(Icons.delete, color: ColorRes.orange, size: 25),
  ];


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

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
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    Strings.DefaultStyle,
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: ColorRes.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  Icon(Icons.home_outlined, color: ColorRes.gray),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "/",
                                    style: TextStyle(fontSize: 20,color: ColorRes.gray),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(Strings.buttons, style: TextStyle(color: ColorRes.black,fontSize: 15)),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "/",
                                    style: TextStyle(fontSize: 20,color: ColorRes.gray),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    Strings.DefaultStyle,
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



                              Commoncontainer(
                                  buttonname: Strings.defaultbutton,
                                  Widgets:
                                  Wrap(
                                    children: List<Widget>.generate(buttonName.length,
                                            (index) {
                                          var button = buttonName[index];
                                          return Padding(
                                            padding: const EdgeInsets.all(5),
                                            child:
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: buttonName[index]["color"],


                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5)
                                                  ),
                                                  padding: EdgeInsets.only(left: 35,right: 35,)
                                              ), onPressed: () {  }, child: Text(buttonName[index]["name"],style: TextStyle(color:index==6? Colors.black: ColorRes.white),),
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

  }}
