import 'package:buzz/utils/Color.dart';
import 'package:buzz/utils/strings.dart';
import 'package:flutter/material.dart';

class CommonAppbar extends StatelessWidget {
  final String name1;
  final String name2;
  final String name3;
  CommonAppbar({super.key, required this.name1, required this.name2, required this.name3});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(color: ColorRes.white,
          child: Padding(
            padding:    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  color: ColorRes.gray,
                ),
                Spacer(),
                Icon(Icons.search, color: ColorRes.gray),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.dark_mode_outlined, color: ColorRes.gray),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.card_travel, color: ColorRes.gray),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.notification_important, color: ColorRes.gray),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                    backgroundImage: AssetImage("assets/image/man1.png")),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      "Buzz",
                      style: TextStyle(color: ColorRes.black,fontSize: 15),
                    ),
                    Row(
                      children: [
                        Text("admin",
                            style: TextStyle(color: ColorRes.gray,fontSize: 15)),
                        Icon(Icons.arrow_drop_down)
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: ColorRes.textcolor,
        ),
        // Padding(
        //   padding:
        //   const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        //   child:
        //   Row(
        //     children: [
        //       Text(
        //         name1,
        //         style: TextStyle(
        //             fontSize: 23,
        //             color: ColorRes.black,
        //             fontWeight: FontWeight.bold),
        //       ),
        //       Spacer(),
        //       Icon(Icons.home_outlined, color: ColorRes.gray),
        //       SizedBox(
        //         width: 10,
        //       ),
        //       Text(
        //         "/",
        //         style: TextStyle(fontSize: 20,color: ColorRes.gray),
        //       ),
        //       SizedBox(
        //         width: 10,
        //       ),
        //       Text(name2, style: TextStyle(color: ColorRes.black,fontSize: 15)),
        //       SizedBox(
        //         width: 10,
        //       ),
        //       Text(
        //         "/",
        //         style: TextStyle(fontSize: 20,color: ColorRes.gray),
        //       ),
        //       SizedBox(
        //         width: 10,
        //       ),
        //       Text(
        //         name3,
        //         style: TextStyle(
        //           fontSize: 15,
        //           color: ColorRes.blue,
        //         ),
        //       ),
        //       SizedBox(
        //         width: 10,
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
