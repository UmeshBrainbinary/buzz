import 'package:flutter/material.dart';

import '../../../utils/Color.dart';

class TitleWidget extends StatelessWidget implements PreferredSizeWidget  {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorRes.white,
      child:
      const Padding(
        padding:
        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child:
        Row(
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
                  style: TextStyle(color: ColorRes.black),
                ),
                Row(
                  children: [
                    Text("admin",
                        style: TextStyle(color: ColorRes.gray)),
                    Icon(Icons.arrow_drop_down)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

}
