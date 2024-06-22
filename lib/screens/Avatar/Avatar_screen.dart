import 'package:buzz/commoncontainer.dart';
import 'package:buzz/utils/Color.dart';
import 'package:buzz/utils/string.dart';
import 'package:buzz/utils/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../commom_widget/common_appbar.dart';
import '../../utils/Assets_res.dart';

class AvatarScreen extends StatelessWidget {
  AvatarScreen({super.key});

  final List<Map<String, dynamic>> buttonName = [
    {
      'image': AssetRes.man1,
      'color': ColorRes.purple,
      'dot': ColorRes.parrot,
    },
    {
      'image': AssetRes.man2,
      'color': ColorRes.sky,
      'dot': ColorRes.yellow
    },
    {
      'image': AssetRes.man3,
      'color': ColorRes.darkpink,
      'dot': ColorRes.orange,
    },
    {
      'image': AssetRes.man1,
      'color': ColorRes.purple,
      'dot': ColorRes.parrot,
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
                                    StringRes.avatars,
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
                                  Text(  StringRes.uiKits, style: TextStyle(
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
                                    StringRes.avatars,
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



                              SizedBox(
                                height: 20,
                              ),
                              Commoncontainer(
                                buttonname: StringRes.sizes,
                                Widgets: Wrap(crossAxisAlignment: WrapCrossAlignment.center,
                                  children:
                                  List<Widget>.generate(buttonName.length, (index) {
                                    double indexs = (50 - index * 4);
                                    return Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: CircleAvatar(radius:  indexs,
                                        backgroundColor: buttonName[index]['color'],
                                        child: Image.asset(fit: BoxFit.cover,
                                          buttonName[index]['image']!,

                                        )),

                                    );
                                  }),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Commoncontainer(
                                buttonname: StringRes.statusindicator,
                                Widgets: Wrap(crossAxisAlignment: WrapCrossAlignment.center,
                                  children:
                                  List<Widget>.generate(buttonName.length, (index) {
                                    double indexs = (50 - index*4) as double;
                                    return Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Stack(
                                        children: [
                                          CircleAvatar(
                                            radius: indexs,
                                            backgroundColor: buttonName[index]['color'],
                                            child: Image.asset(
                                              buttonName[index]['image']!,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Positioned(right: 9,
                                              bottom:0,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: buttonName[index]['dot'],
                                                  shape: BoxShape.circle,
                                                ),
                                                height: 14,width:14 ,
                                              ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),

                      // Commoncontainer(
                      //   buttonname: StringRes.grouping,
                      //   Widgets: Row(crossAxisAlignment: CrossAxisAlignment.center,
                      //     children: [
                      //       Stack(
                      //         children:[
                      //           Positioned(left: 0,
                      //             child: CircleAvatar(
                      //               radius: 45,
                      //               backgroundColor: ColorRes.purple,
                      //               child:  Image.asset(AssetRes.man1,fit: BoxFit.cover,),
                      //             ),
                      //           ),
                      //           Positioned(left: 30,
                      //             child: CircleAvatar(
                      //               radius: 40,
                      //               backgroundColor: ColorRes.sky,
                      //               child:  Image.asset(AssetRes.man2,fit: BoxFit.cover,),
                      //             ),
                      //           ),
                      //           Positioned(left: 80,
                      //             child: CircleAvatar(
                      //               radius: 35,
                      //               backgroundColor: ColorRes.darkpink,
                      //               child:  Image.asset(AssetRes.man3,fit: BoxFit.cover,),
                      //             ),
                      //           )
                      //
                      //         ]
                      //
                      //       ),
                      //     ],
                      //   ),
                      // ),
                              // Commoncontainer(
                              //   buttonname: Strings.iconbutton,
                              //   Widgets: Wrap(
                              //     children:
                              //     List<Widget>.generate(icons.length, (index) {
                              //       return Padding(
                              //           padding: const EdgeInsets.all(10),
                              //           child: icons[index]);
                              //     }),
                              //   ),
                              // )
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
}
