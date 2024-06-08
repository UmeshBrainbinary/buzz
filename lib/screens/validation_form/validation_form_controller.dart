import 'package:flutter/cupertino.dart';
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