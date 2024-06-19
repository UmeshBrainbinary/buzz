import 'package:buzz/screens/general/general_controller.dart';
import 'package:buzz/utils/Color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeneralScreen extends StatelessWidget {
  GeneralScreen({super.key});

  GeneralController generalController = Get.put(GeneralController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.background,
      body: Column(
        children: [
        Wrap(
          children: [
            Text('vfdnmkj')
          ],
        ),
          Row(
            children: [
              Wrap(
                direction: Axis.horizontal,
                children: generalController.generalList
                    .map((element) => Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, top: 20),
                  child: GeneralDataValue(
                    generalData: generalController.generalList[
                    generalController.generalList
                        .indexOf(element)],
                  ),
                ))
                    .toList(),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class GeneralDataValue extends StatelessWidget {
  final GeneralData generalData;

  const GeneralDataValue({super.key, required this.generalData});

  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorRes.white,
        ),
        child: Row(
          children: [
            Image.asset(generalData.image,height: 20,width: 20,),
            Text(generalData.title),
          ],
        ),
      );

  }
}
