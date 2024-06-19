import 'package:buzz/screens/home/home_controller.dart';
import 'package:buzz/screens/home/home_screen.dart';
import 'package:buzz/screens/product_page/widget/product_page_widget.dart';
import 'package:buzz/screens/user_edit/widget/user_edit_widget.dart';
import 'package:buzz/screens/validation_form/widget/validation_form_widget.dart';
import 'package:buzz/utils/Assets_res.dart';
import 'package:buzz/utils/Color.dart';
import 'package:buzz/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

HomeController homeController = Get.find<HomeController>();

Widget commonContainer(
    {required String text,
    required String image,
    Color? color,
    Color? imageColor,
    required String title,
    required String price}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: ColorRes.white,
    ),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: color,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                image,
                color: imageColor,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: ColorRes.textcolor, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    price,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    text,
                    style: const TextStyle(color: ColorRes.textcolor),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    AssetRes.upArrow,
                    height: 12,
                    width: 12,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Widget defaultContainer() {
  return ResponsiveBuilder(
    builder: (BuildContext context, SizingInformation sizingInformation) {
      return Expanded(
        child: Row(
          children: [
            Expanded(
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
                                    style:
                                    const TextStyle(color: ColorRes.textcolor),
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
            const SizedBox(
              width: 20,
            ),
         sizingInformation.isDesktop?
         Expanded(
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
                        width: 145,
                      )
                    ],
                  ),
                ),
              ),
            ):
         SizedBox(),
            const SizedBox(
              width: 20,
            ),
          sizingInformation.isDesktop || sizingInformation.isTablet?  Expanded(
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
                )
          ):SizedBox(),
          ],
        ),
      );
    },

  );
}

Widget wrapContainer() {
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
          const Row(
            children: [
              Text(
                StringRes.earning,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Icon(Icons.more_vert)
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            children: [
              Text(
                '\$${1222}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '12%',
                style: TextStyle(color: ColorRes.blue),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          LinearProgressIndicator(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
            value: 0.3,
            // This represents 30% progress
            backgroundColor: Colors.blue.shade100,
            color: Colors.blue,
            minHeight: 10,
          ),
          const SizedBox(
            height: 20,
          ),
          RichText(
            text: const TextSpan(
              text: 'This week Extra Earning',
              style: TextStyle(
                  color: ColorRes.textcolor, fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                    text: '\$${9233}', style: TextStyle(color: ColorRes.blue)),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget text() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Row(
        children: [
          Text('Card Number'),
          Spacer(),
          Text('Card Holder'),
          Spacer(),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              child: TextFormField(
                controller: homeController.cardNumber,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: ColorRes.blue)
                ),
                hintText: 'Enter Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
          )),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: TextFormField(
                controller: homeController.cardName,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: ColorRes.blue)
                ),
                hintText: 'Enter Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
          )),
        ],
      ),
      SizedBox(height: 20,),
      const Text('Expiration Date'),
      SizedBox(height: 10,),
      Row(
        children: [
          Obx(
            () => buildDropdownButton(
              value: homeController.dropdownValue.value,
              items: homeController.items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (value) {
                homeController.dropdownOnChange(value);
              },
            ),
          ),
          SizedBox(width: 10,),
          Obx(
            () => buildDropdownButton(
              value: homeController.dropdownValueYear.value,
              items: homeController.itemsYear.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (value) {
                homeController.dropdownChangeYear(value);
              },
            ),
          ),
        ],
      ),
      SizedBox(height: 20,),
      const Text('Card Number'),
      SizedBox(height: 10,),
      Row(
        children: [
          Container(
            height: 40,
            width: 120,
            child: TextFormField(
              controller: homeController.number,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: ColorRes.blue)
                ),
                hintText: 'Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(width: 10,),
          SizedBox(
            child: const Text(
              'Three or Four Digits,usually found on the back of the card',
              style: TextStyle(color: ColorRes.textcolor,fontSize: 12),
              overflow: TextOverflow.visible,
              maxLines: 2,
            ),
          )
        ],
      ),
      SizedBox(height: 20,),
      Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xFF448AFF),
        ),
        child: const Center(
          child: Text(
            'Proceed',
            style: TextStyle(color: ColorRes.white),
          ),
        ),
      )
    ],
  );
}
