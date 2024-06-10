import 'package:buzz/screens/cart/cart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ValidationController extends GetxController{
  TextEditingController firstNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController currencyController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController digitsController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController rangeController = TextEditingController();
  TextEditingController userController = TextEditingController();
  TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();

  String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your username';
    }
    return null;
  }

  void onTapSubmitForm(context){
    if(formKey.currentState!.validate() && value.value){
   Get.to(CartScreen());
    }
  }


  var dropdownValueNumber = 'select Menu 1'.obs;
  var value = false.obs;
  var checkValue = false.obs;
  var items = [
    'select Menu 1',
    'select Menu 2',
    'select Menu 3',
  ].obs;

  void dropdownChangeSkills(newValue) {
    dropdownValueNumber.value = newValue;
    update();
  }
}