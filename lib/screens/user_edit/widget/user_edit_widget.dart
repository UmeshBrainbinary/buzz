import 'package:flutter/material.dart';

Widget textField({required TextEditingController controller,required String text,String? hintText}) {
  return SizedBox(
    height: 40,
    child: Column(
      children: [
        Text(text),
        const SizedBox(height: 5,),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )),
        ),
      ],
    ),
  );
}