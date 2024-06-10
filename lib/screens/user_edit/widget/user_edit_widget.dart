import 'package:buzz/screens/user_edit/user_edit_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

UserEditController controller = Get.find<UserEditController>();

Widget textField(
    {required TextEditingController controller,
    required String text,
    String? hintText}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(text),
      const SizedBox(
        height: 5,
      ),
      SizedBox(
        height: 40,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )),
        ),
      ),
    ],
  );
}

Widget buildDropdownButton(
    {required String? value,
    required List<DropdownMenuItem<String>>? items,
    required void Function(String?)? onChanged}) {
  return Container(
    height: 40,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.grey),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButton(
        underline: Container(
          height: 0,
        ),
        value: value,
        items: items,
        onChanged: onChanged,
      ),
    ),
  );
}