import 'package:buzz/utils/Color.dart';
import 'package:buzz/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Commoncontainer extends StatelessWidget {
  final String buttonname;
  final  Widgets;
  Commoncontainer({super.key, this.Widgets, required this.buttonname});

  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
          color: ColorRes.white,
          borderRadius: BorderRadius.circular(20),

        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(buttonname,  style: TextStyle(
                      fontSize: 23,
                      color: ColorRes.black,
                      fontWeight: FontWeight.bold),),
                  Icon(Icons.settings,color: ColorRes.blue,)
                ],
              ),
              SizedBox(height: 20,),
              Container(
                height: 2,
                width: double.infinity,
                color: ColorRes.textcolor.withOpacity(0.5),
              ),
              SizedBox(height: 20,),

              Widgets


            ],
          ),
        ));



  }
}
