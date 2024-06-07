import 'package:buzz/screens/pricing/pricing_controller.dart';
import 'package:buzz/screens/pricing/widget/princing_widget.dart';
import 'package:buzz/screens/product_page/widget/product_page_widget.dart';
import 'package:buzz/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PricingScreen extends StatelessWidget {
  PricingScreen({super.key});

  PricingController controller = Get.put(PricingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf2f4f6),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              row(
                text: StringRes.pricing,
                data: StringRes.pricing,
              ),
              RichText(
                text: TextSpan(
                  text: 'Best ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Plans ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent)),
                    TextSpan(
                      text: 'For Business',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Text(
                'Cost - Effective, full Service high Security',
                style: TextStyle(color: Colors.grey),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Monthly'),
                  Obx(
                    () => Transform.scale(
                      scale: 0.60,
                      child: Switch(
                        value: controller.isSwitched.value,
                        activeColor: Colors.blue,
                        onChanged: (bool value) {
                          controller.toggleSwitch(value);
                        },
                      ),
                    ),
                  ),
                  Text('Yearly'),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blueAccent),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8),
                        child: Center(
                            child: Text(
                          '30% discount',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  )
                ],
              ),
              discountList(),
              SizedBox(
                height: 30,
              ),

              RichText(
                text: TextSpan(
                  text: 'Best ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Plans ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent)),
                    TextSpan(
                      text: 'For Business',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              const Text(
                'Cost - Effective, full Service high Security',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 10,),
              Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.black)),
                child: Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          controller.toggleTab();
                        },
                        child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: controller.isAnnualSelected.value
                                  ? Colors.blue
                                  : Colors.transparent,
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8),
                              child: Center(
                                  child: Text(
                                'Monthly',
                                style: TextStyle(
                                    color: controller.isAnnualSelected.value
                                        ? Colors.white
                                        : Colors.black),
                              )),
                            )),
                      ),
                      InkWell(
                        onTap: () {
                          controller.toggleTab();
                        },
                        child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: !controller.isAnnualSelected.value
                                  ? Colors.blue
                                  : Colors.transparent,
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8),
                              child: Center(
                                  child: Text(
                                'Annual',
                                style: TextStyle(
                                    color: !controller.isAnnualSelected.value
                                        ? Colors.white
                                        : Colors.black),
                              )),
                            )),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Obx(
                () => controller.isAnnualSelected.value
                    ? discountListMonthly()
                    : discountListMonthly(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
