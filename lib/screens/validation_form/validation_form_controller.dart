import 'package:buzz/screens/cart/cart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ValidationController extends GetxController {
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
  final formKey1 = GlobalKey<FormState>();

  String? validateFirstname(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your firstname';
    }
    return null;
  }

  String? validateUserName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your username';
    }
    return null;
  }

  String? validateDigits(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your digits';
    }
    return null;
  }

  String? validateNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your number';
    }
    return null;
  }

  String? validateRange(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your range';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  String? validatePasswordForm(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    if (!(value.isEmail)) {
      return 'Please Enter Valid Email';
    }
    return null;
  }

  String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    }
    if (!(value.length == 10)) {
      return 'Please Enter Must Be 10 Character';
    }
    return null;
  }

  String? validateWeblink(String? value) {
    String urlPattern =
        r'^(https?:\/\/)?([a-zA-Z0-9.-]+)\.([a-zA-Z]{2,4})([\/\w.-]*)*\/?$';
    RegExp urlRegex = RegExp(urlPattern);
    if (value == null || value.isEmpty) {
      return "Please enter website";
    }
    if (!(urlRegex.hasMatch(websiteController.text.trim()))) {
      return "Please enter a valid website URL";
    }
    return null;
  }

  void onTapSubmitForm(context) {
    if (formKey.currentState!.validate() && value.value) {
      Get.to(CartScreen());
    } else {
      Get.snackbar('Please check', "Terms and condition");
    }
  }
  void onTapSubmit(context) {
    if (formKey1.currentState!.validate() && checkValue.value) {
      Get.to(CartScreen());
    } else {
      Get.snackbar('Please check', "Me out");
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
