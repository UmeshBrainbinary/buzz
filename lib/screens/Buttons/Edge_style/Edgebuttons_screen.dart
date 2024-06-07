import 'package:buzz/commom_widget/common_appbar.dart';
import 'package:buzz/utils/Color.dart';
import 'package:buzz/utils/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../commoncontainer.dart';

class EdgebuttonsScreen extends StatelessWidget {
 EdgebuttonsScreen({super.key});
  final List bname = [
    'Primary Button',
    'Secondary Button',
    'Success Button',
    "info Button",
    'Warning Button',
    'Danger Button',
    'Light Button'
  ];
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
  List coustmstaste = ['Link', 'Input', 'Submit', 'Button'];
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
  List<String> interests = [
    'Bollywood',
    'Biryani',
    'Running',
    'Punjabi',
    'Dancing'
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
    return  ResponsiveBuilder(
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
                                  Strings.EdgeStyle,
                                  style: TextStyle(
                                      fontSize: 20,
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
                                  Strings.EdgeStyle,
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

                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(30)
                                                ),
                                                padding: EdgeInsets.only(left: 35,right: 35,)
                                            ), onPressed: () {  }, child: Text(buttonName[index]["name"],style: TextStyle(color:index==6? Colors.black: ColorRes.white),),
                                          ),
                                        );
                                      }),
                                )),

                            SizedBox(
                              height: 20,
                            ),
                            Commoncontainer(
                                buttonname: Strings.largetbutton,
                                Widgets:
                                Wrap(
                                  children: List<Widget>.generate(buttonName.length,
                                          (index) {
                                        var button = buttonName[index];
                                        return Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: button['color'],
                                              elevation: 0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(30),
                                              ),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 40, vertical: 15),
                                            ),
                                            onPressed: () {},
                                            child: Text(
                                              button['name'],
                                              style: TextStyle(
                                                color: index == 6
                                                    ? ColorRes.black
                                                    : ColorRes.white,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                )
                            ),

                            SizedBox(
                              height: 20,
                            ),
                            Commoncontainer(
                                buttonname: Strings.smalltbutton,
                                Widgets: Wrap(
                                  children: List<Widget>.generate(buttonName.length,
                                          (index) {
                                        var button = buttonName[index];
                                        return Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: buttonName[index]
                                                ["color"],
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(30)),
                                                padding: EdgeInsets.only(
                                                    left: 35,
                                                    right: 35,
                                                    top: 13,
                                                    bottom: 13)),
                                            onPressed: () {},
                                            child: Text(
                                              buttonName[index]["name"],
                                              style: TextStyle(
                                                  color: index == 6
                                                      ? Colors.black
                                                      : ColorRes.white,
                                                  fontSize: 11),
                                            ),
                                          ),
                                        );
                                      }),
                                )),

                            SizedBox(
                              height: 20,
                            ),
                            Commoncontainer(
                                buttonname: Strings.esmalltbutton,
                                Widgets: Wrap(
                                  children: List<Widget>.generate(buttonName.length,
                                          (index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: buttonName[index]
                                                ["color"],
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(30)),
                                                padding: EdgeInsets.only(
                                                    left: 5,
                                                    right: 5,
                                                    top: 1,
                                                    bottom: 1)),
                                            onPressed: () {},
                                            child: Text(
                                              buttonName[index]["name"],
                                              style: TextStyle(
                                                  color: index == 6
                                                      ? Colors.black
                                                      : ColorRes.white,
                                                  fontSize: 10),
                                            ),
                                          ),
                                        );
                                      }),
                                )),

                            SizedBox(
                              height: 20,
                            ),
                            Commoncontainer(
                                buttonname: Strings.activetbutton,
                                Widgets: Wrap(
                                  children: List<Widget>.generate(buttonName.length,
                                          (index) {
                                        var button = buttonName[index];
                                        return Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: buttonName[index]
                                                ["color"],
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(30)),
                                                padding: EdgeInsets.only(
                                                    left: 18,
                                                    right: 18,
                                                    top: 1,
                                                    bottom: 1)),
                                            onPressed: () {},
                                            child: Text(
                                              "Active",
                                              style: TextStyle(
                                                  color: index == 6
                                                      ? Colors.black
                                                      : ColorRes.white,
                                                  fontSize: 15),
                                            ),
                                          ),
                                        );
                                      }),
                                )),

                            SizedBox(
                              height: 20,
                            ),
                            Commoncontainer(
                                buttonname: Strings.Disabledbutton,
                                Widgets: Wrap(
                                  children: List<Widget>.generate(buttonName.length,
                                          (index) {
                                        var button = buttonName[index];
                                        return Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                ColorRes.gray.withOpacity(0.5),
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(30)),
                                                padding: EdgeInsets.only(
                                                    left: 19,
                                                    right: 19,
                                                    top: 2,
                                                    bottom: 2)),
                                            onPressed: () {},
                                            child: Text(
                                              "Disable",
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: 15),
                                            ),
                                          ),
                                        );
                                      }),
                                )),

                            SizedBox(
                              height: 20,
                            ),
                            Commoncontainer(
                                buttonname: Strings.coustemstatebutton,
                                Widgets: Wrap(
                                  children: List<Widget>.generate(coustmstaste.length,
                                          (index) {
                                        var button = buttonName[index];
                                        return Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: buttonName[index]
                                                ["color"],
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(30)),
                                                padding: EdgeInsets.only(
                                                    left: 18,
                                                    right: 18,
                                                    top: 1,
                                                    bottom: 1)),
                                            onPressed: () {},
                                            child: Text(
                                              coustmstaste[index],
                                              style: TextStyle(
                                                  color: index == 6
                                                      ? Colors.black
                                                      : ColorRes.white,
                                                  fontSize: 15),
                                            ),
                                          ),
                                        );
                                      }),
                                )),
                            SizedBox(
                              height: 20,
                            ),

                            Commoncontainer(
                                buttonname: Strings.outlinebutton,
                                Widgets: Wrap(
                                  children: List<Widget>.generate(buttonName.length,
                                          (index) {
                                        var button = buttonName[index];
                                        return Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      color: buttonName[index]["color"],
                                                    ),
                                                    borderRadius:
                                                    BorderRadius.circular(30)),
                                                padding: EdgeInsets.only(
                                                  left: 35,
                                                  right: 35,
                                                )),
                                            onPressed: () {},
                                            child: Text(
                                              buttonName[index]["name"],
                                              style: TextStyle(
                                                color: index == 6
                                                    ? Colors.black
                                                    : buttonName[index]["color"],
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                )),

                            SizedBox(
                              height: 20,
                            ),
                            Commoncontainer(
                                buttonname: Strings.bolborderoutilnebuttons,
                                Widgets: Wrap(
                                  children: List<Widget>.generate(buttonName.length,
                                          (index) {
                                        var button = buttonName[index];
                                        return Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        color: buttonName[index]["color"],
                                                        width: 2),
                                                    borderRadius:
                                                    BorderRadius.circular(30)),
                                                padding: EdgeInsets.only(
                                                  left: 35,
                                                  right: 35,
                                                )),
                                            onPressed: () {},
                                            child: Text(
                                              buttonName[index]["name"],
                                              style: TextStyle(
                                                color: index == 6
                                                    ? Colors.black
                                                    : buttonName[index]["color"],
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                )),

                            SizedBox(
                              height: 20,
                            ),
                            Commoncontainer(
                              buttonname: Strings.outilnelargebuttons,
                              Widgets: Wrap(
                                children:
                                List<Widget>.generate(buttonName.length, (index) {
                                  var button = buttonName[index];
                                  return Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: buttonName[index]["color"],
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(30)),
                                          padding: EdgeInsets.only(
                                              left: 40,
                                              right: 40,
                                              top: 15,
                                              bottom: 15)),
                                      onPressed: () {},
                                      child: Text(
                                        buttonName[index]["name"],
                                        style: TextStyle(
                                            color: index == 6
                                                ? Colors.black
                                                : buttonName[index]["color"],
                                            fontSize: 16),
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ),

                            SizedBox(
                              height: 20,
                            ),
                            Commoncontainer(
                                buttonname: Strings.outilnesmallbuttons,
                                Widgets: Wrap(
                                  children: List<Widget>.generate(buttonName.length,
                                          (index) {
                                        var button = buttonName[index];
                                        return Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      color: buttonName[index]["color"],
                                                    ),
                                                    borderRadius:
                                                    BorderRadius.circular(30)),
                                                padding: EdgeInsets.only(
                                                    left: 35,
                                                    right: 35,
                                                    top: 13,
                                                    bottom: 13)),
                                            onPressed: () {},
                                            child: Text(
                                              buttonName[index]["name"],
                                              style: TextStyle(
                                                  color: index == 6
                                                      ? Colors.black
                                                      : buttonName[index]["color"],
                                                  fontSize: 11),
                                            ),
                                          ),
                                        );
                                      }),
                                )),

                            SizedBox(
                              height: 20,
                            ),
                            Commoncontainer(
                                buttonname: Strings.outilneEtrasmallbuttons,
                                Widgets: Wrap(
                                  children: List<Widget>.generate(buttonName.length,
                                          (index) {
                                        var button = buttonName[index];
                                        return Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      color: buttonName[index]["color"],
                                                    ),
                                                    borderRadius:
                                                    BorderRadius.circular(30)),
                                                padding: EdgeInsets.only(
                                                    left: 5,
                                                    right: 5,
                                                    top: 1,
                                                    bottom: 1)),
                                            onPressed: () {},
                                            child: Text(
                                              buttonName[index]["name"],
                                              style: TextStyle(
                                                  color: index == 6
                                                      ? Colors.black
                                                      : buttonName[index]["color"],
                                                  fontSize: 10),
                                            ),
                                          ),
                                        );
                                      }),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Commoncontainer(
                                buttonname: Strings.disabledoutilnebuttons,
                                Widgets: Wrap(
                                  children: List<Widget>.generate(buttonName.length,
                                          (index) {
                                        var button = buttonName[index];
                                        return Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        color: buttonName[index]
                                                        ["color"]),
                                                    borderRadius:
                                                    BorderRadius.circular(30)),
                                                padding: EdgeInsets.only(
                                                    left: 19,
                                                    right: 19,
                                                    top: 2,
                                                    bottom: 2)),
                                            onPressed: () {},
                                            child: Text(
                                              "Disable",
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: 15),
                                            ),
                                          ),
                                        );
                                      }),
                                )),

                            SizedBox(
                              height: 20,
                            ),
                            Commoncontainer(
                                buttonname: Strings.gradientbutton,
                                Widgets: Wrap(
                                  children: List<Widget>.generate(buttonName.length,
                                          (index) {
                                        var button = buttonName[index];
                                        return Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Container(
                                            height: 30,
                                            width: 170,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(15),
                                                gradient: LinearGradient(  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [
                                                    buttonName[index]["color"], // Fully opaque
                                                    buttonName[index]["color"],
                                                    buttonName[index]["color"],
                                                    buttonName[index]["color"],
                                                    buttonName[index]["color"],
                                                    buttonName[index]["color"],
                                                    buttonName[index]["color"].withOpacity(0.8),


                                                  ],
                                                )),
                                            child: Center(
                                                child: Text(
                                                  buttonName[index]["name"],
                                                  style: TextStyle(
                                                      color: index == 6
                                                          ? Colors.black
                                                          : ColorRes.white),
                                                )),
                                          ),
                                        );
                                      }),
                                )),

                            SizedBox(
                              height: 20,
                            ),
                            Commoncontainer(
                              buttonname: Strings.buttonloder,
                              Widgets: Wrap(
                                children:
                                List<Widget>.generate(loder.length, (index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: buttonName[index]["color"],
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(30)),
                                          padding: EdgeInsets.only(
                                              left: 10,
                                              right: 10,
                                              top: 10,
                                              bottom: 10)),
                                      onPressed: () {},
                                      child: Container(
                                        width: 100,
                                        child: Row(
                                          children: [
                                            index == 3
                                                ? SizedBox(
                                              width: 4,
                                              height: 3,
                                            )
                                                : Container(
                                              padding: EdgeInsets.all(8),
                                              height: 40,
                                              width: 40,
                                              child: loder[index]["Widget"],
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              loder[index]["name"],
                                              style: TextStyle(
                                                  color: index == 6
                                                      ? Colors.black
                                                      : ColorRes.white,
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ),

                            SizedBox(
                              height: 20,
                            ),
                            Commoncontainer(
                                buttonname: Strings.buttonwithicon,
                                Widgets: Wrap(
                                  children:
                                  List<Widget>.generate(iconname.length, (index) {
                                    var button = buttonName[index];
                                    return Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: iconname[index]["color"],
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(30)),
                                            padding: EdgeInsets.only(
                                                left: 15,
                                                right: 15,
                                                top: 16,
                                                bottom: 16)
                                        ),
                                        onPressed: () {},
                                        child: Container(
                                          width: 62,
                                          child: Row(
                                            children: [
                                              iconname[index]["icon"],
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                iconname[index]["name"],
                                                style: TextStyle(
                                                    color: index == 6
                                                        ? Colors.black
                                                        : ColorRes.white,
                                                    fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                )),

                            SizedBox(
                              height: 20,
                            ),
                            Commoncontainer(
                              buttonname: Strings.iconbutton,
                              Widgets: Wrap(
                                children:
                                List<Widget>.generate(icons.length, (index) {
                                  return Padding(
                                      padding: const EdgeInsets.all(17),
                                      child: icons[index]);
                                }),
                              ),
                            )
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
