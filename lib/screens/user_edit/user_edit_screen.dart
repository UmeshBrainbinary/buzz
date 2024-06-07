import 'package:buzz/screens/product_page/widget/product_page_widget.dart';
import 'package:buzz/screens/user_edit/user_edit_controller.dart';
import 'package:buzz/screens/user_edit/widget/user_edit_widget.dart';
import 'package:buzz/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserEditScreen extends StatelessWidget {
   UserEditScreen({super.key});

   UserEditController controller = Get.put(UserEditController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf2f4f6),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            row(text: StringRes.userEdit, data: StringRes.userEdit),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(StringRes.myProfile,style: TextStyle(fontSize: 18),),
                    Divider(
                      color: Colors.grey,
                    ),
                    ListTile(
                      leading: CircleAvatar(),
                      title: Text('Elon Musk'),
                      subtitle: Text('CEO',style: TextStyle(color: Colors.grey),),
                    ),
                    textField(
                      controller: controller.firstNameController,
                      text: StringRes.firstName,
                      hintText: 'Company'
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
