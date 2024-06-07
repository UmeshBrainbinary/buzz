import 'package:buzz/screens/pricing/pricing_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
PricingController controller = Get.find<PricingController>();

Widget discountList(){
  return  Container(
    height: 405,
    child: ListView.builder(
      itemCount: controller.data.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            controller.data[index]['image'],
                            height: 40,
                            width: 40,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(controller.data[index]['title']),

                        ],
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                          width: 200,
                          child: Text(controller.data[index]['subtitle'])),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Text("\$${controller.data[index]['rent']}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          Text(controller.data[index]['text']),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Row(
                        children: [
                          Icon(Icons.cloud_done_rounded,color: Colors.green,),
                          SizedBox(width: 10,),
                          Text(controller.data[index]['text1']),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.cloud_done_rounded,color: Colors.green,),
                          SizedBox(width: 10,),
                          Text(controller.data[index]['text2']),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.cloud_done_rounded,color: Colors.green,),
                          SizedBox(width: 10,),
                          Text(controller.data[index]['text3']),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.cloud_done_rounded,color: Colors.green,),
                          SizedBox(width: 10,),
                          Text(controller.data[index]['text4']),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.cloud_done_rounded,color: Colors.green,),
                          SizedBox(width: 10,),
                          Text(controller.data[index]['text5']),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black12),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 50, right: 50),
                          child: Center(child: Text('GET STARTED')),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    ),
  );
}

Widget discountListMonthly(){
  return  Container(
    height: 405,
    child: ListView.builder(
      itemCount: controller.dataMonthly.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(controller.data[index]['title']),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Text("\$${controller.data[index]['rent']}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          Text(controller.data[index]['text']),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Row(
                        children: [
                          Icon(Icons.done,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text(controller.data[index]['text1']),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.done,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text(controller.data[index]['text2']),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.done,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text(controller.data[index]['text3']),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.done,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text(controller.data[index]['text4']),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.done,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text(controller.data[index]['text5']),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black12),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 50, right: 50),
                          child: Center(child: Text('GET STARTED')),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    ),
  );
}