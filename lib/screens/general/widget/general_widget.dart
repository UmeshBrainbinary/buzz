import 'package:buzz/screens/general/general_controller.dart';
import 'package:buzz/utils/Color.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GeneralDataValue extends StatelessWidget {
  final GeneralData generalData;

  const GeneralDataValue({super.key, required this.generalData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorRes.white,
      ),
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Image.asset(
                  generalData.image,
                  height: 35,
                  width: 35,
                ),
                const SizedBox(width: 10),
                Text(
                  generalData.title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                height: 130,
                width: 150,
                child: SfCartesianChart(
                  primaryXAxis: const CategoryAxis(
                    isVisible: false,
                  ),
                  primaryYAxis: const NumericAxis(
                    isVisible: false,
                  ),
                  plotAreaBorderWidth: 0,
                  series: <SplineAreaSeries<SalesData, String>>[
                    SplineAreaSeries<SalesData, String>(
                      dataSource: <SalesData>[
                        SalesData('Jan', 35),
                        SalesData('Feb', 28),
                        SalesData('Mar', 34),
                        SalesData('Apr', 32),
                        SalesData('May', 40),
                      ],
                      xValueMapper: (SalesData sales, _) => sales.year,
                      yValueMapper: (SalesData sales, _) => sales.sales,
                      gradient: LinearGradient(
                        colors: [
                          generalData.textColor.withOpacity(0.4),
                          generalData.textColor.withOpacity(0.1)
                        ],
                        stops: [0.2, 1],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: generalData.color,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Column(
                  children: [
                    Text(
                      generalData.price,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      generalData.tex,
                      style: TextStyle(
                        color: generalData.textColor,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15),
            ],
          )
        ],
      ),
    );
  }
}