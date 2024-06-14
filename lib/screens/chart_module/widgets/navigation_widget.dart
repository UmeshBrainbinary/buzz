import 'package:flutter/material.dart';

import '../../../utils/Color.dart';
import '../../../utils/strings.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
      const Padding(
        padding:
        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child:
        Row(
          children: [
            Text(
              Strings.chart2,
              style: TextStyle(
                  fontSize: 23,
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
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 10,
            ),
            Text(Strings.app, style: TextStyle(color: ColorRes.black)),
            SizedBox(
              width: 10,
            ),
            Text(
              "/",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              Strings.chart2,
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
      );
  }
}
