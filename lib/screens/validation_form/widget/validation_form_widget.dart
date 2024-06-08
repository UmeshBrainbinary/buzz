import 'package:flutter/material.dart';

Widget textFieldValidation(
    {required TextEditingController controller,
      required String text,
      String? hintText,Widget? prefixIcon,
      String? Function(String?)? validator}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(text),
      const SizedBox(
        height: 5,
      ),
      SizedBox(
        height: 40,
        child: TextFormField(
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
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


Widget buildDropdownButtonValidation(
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