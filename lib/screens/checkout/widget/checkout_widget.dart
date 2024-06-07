import 'package:buzz/screens/checkout/checkout_controller.dart';
import 'package:buzz/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

CheckoutController controller = Get.find<CheckoutController>();

Widget checkOutTitle() {
  return const Row(
    children: [
      Text(
        StringRes.checkOut,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      Spacer(),
      Icon(
        Icons.home,
        size: 18,
      ),
      SizedBox(
        width: 2,
      ),
      Text('/'),
      SizedBox(
        width: 2,
      ),
      Text('E-Commerce'),
      SizedBox(
        width: 2,
      ),
      Text('/'),
      SizedBox(
        width: 2,
      ),
      Text(
        StringRes.checkOut,
        style: TextStyle(color: Colors.blue),
      )
    ],
  );
}

Widget detailsContainer() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Text(StringRes.firstName),
          SizedBox(
            width: 15,
          ),
          Spacer(),
          Text(StringRes.firstName),
          Spacer(),
        ],
      ),
      SizedBox(height: 10,),

      Row(
        children: [
          Expanded(
            child: textField(
              controller: controller.firstNameController,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: textField(
              controller: controller.lastNameController,
            ),
          ),
        ],
      ),
      SizedBox(height: 10,),
      Row(
        children: [
          Text(StringRes.phone),
          SizedBox(
            width: 60,
          ),
          Spacer(),
          Text(StringRes.email),
          Spacer(),
        ],
      ),
      SizedBox(height: 10,),
      Row(
        children: [
          Expanded(
            child: textField(
              controller: controller.phoneController,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: textField(
              controller: controller.emailController,
            ),
          ),
        ],
      ),
      SizedBox(height: 10,),
      Text(StringRes.country),
      SizedBox(height: 10,),
      textField(controller: controller.countryController),
      SizedBox(height: 10,),
      Text(StringRes.address),
      SizedBox(height: 10,),
      textField(controller: controller.addressController),
      SizedBox(height: 10,),
      Text(StringRes.city),
      SizedBox(height: 10,),
      textField(controller: controller.cityController),
      SizedBox(height: 10,),
      Text(StringRes.state),
      SizedBox(height: 10,),
      textField(controller: controller.stateController),
      SizedBox(height: 10,),
      Text(StringRes.postalCode),
      SizedBox(height: 10,),
      textField(controller: controller.postalCodeController),
      SizedBox(height: 10,),

    ],
  );
}

Widget textField({required TextEditingController controller}) {
  return Container(
    height: 40,
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      )),
    ),
  );
}
