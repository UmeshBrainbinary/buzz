import 'package:buzz/common/popup_message/popup_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class UserEditController extends GetxController {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController websiteController = TextEditingController();


  TextEditingController mobileController = TextEditingController();
  TextEditingController editEmailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController editWebsiteController = TextEditingController();
  TextEditingController companyController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  TextEditingController homeTownController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController aboutMeController = TextEditingController();

  bool validate() {
    String emailPattern = r'^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$';
    RegExp emailRegex = RegExp(emailPattern);

    String urlPattern =
        r'^(https?:\/\/)?([a-zA-Z0-9.-]+)\.([a-zA-Z]{2,4})([\/\w.-]*)*\/?$';
    RegExp urlRegex = RegExp(urlPattern);

    String passwordPattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp passRegex = RegExp(passwordPattern);

    if (firstNameController.text.trim().isEmpty) {
      errorToast(msg: "Please enter first name");
      return false;
    } else if (lastNameController.text.trim().isEmpty) {
      errorToast(msg: "Please enter last name");
      return false;
    }else if (emailController.text.trim().isEmpty) {
      errorToast(msg: "Please enter email");
      return false;
    } else if (!emailRegex.hasMatch(emailController.text.trim())) {
      errorToast(msg: "Please enter a valid email");
      return false;
    } else if(passwordController.text.trim().isEmpty) {
      errorToast(msg: "Please enter password");
      return false;
    }else if (!passRegex.hasMatch(passwordController.text.trim())) {
      errorToast(msg: "Please enter a valid password");
      return false;
    }
    else if (websiteController.text.trim().isEmpty) {
      errorToast(msg: "Please enter website");
      return false;
    } else if (!urlRegex.hasMatch(websiteController.text.trim())) {
      errorToast(msg: "Please enter a valid website URL");
      return false;
    }  else {
      return true;
    }
  }

  bool validateEdit() {
    String emailPattern = r'^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$';
    RegExp emailRegex = RegExp(emailPattern);

    String urlPattern =
        r'^(https?:\/\/)?([a-zA-Z0-9.-]+)\.([a-zA-Z]{2,4})([\/\w.-]*)*\/?$';
    RegExp urlRegex = RegExp(urlPattern);

    String passwordPattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp passRegex = RegExp(passwordPattern);

    if (mobileController.text.trim().isEmpty) {
      errorToast(msg: "Please enter mobile number");
      return false;
    } else if (editEmailController.text.trim().isEmpty) {
      errorToast(msg: "Please enter email");
      return false;
    } else if (!emailRegex.hasMatch(editEmailController.text.trim())) {
      errorToast(msg: "Please enter a valid email");
      return false;
    }else if (addressController.text.trim().isEmpty) {
      errorToast(msg: "Please enter address");
      return false;
    } else if (editWebsiteController.text.trim().isEmpty) {
      errorToast(msg: "Please enter website");
      return false;
    } else if (!urlRegex.hasMatch(editWebsiteController.text.trim())) {
      errorToast(msg: "Please enter a valid website URL");
      return false;
    }
    else if(companyController.text.trim().isEmpty) {
      errorToast(msg: "Please enter company");
      return false;
    }else if(zipCodeController.text.trim().isEmpty) {
      errorToast(msg: "Please enter zipcode");
      return false;
    }else if(homeTownController.text.trim().isEmpty) {
      errorToast(msg: "Please enter home town");
      return false;
    }else if(cityController.text.trim().isEmpty) {
      errorToast(msg: "Please enter city");
      return false;
    }else if(countryController.text.trim().isEmpty) {
      errorToast(msg: "Please enter country");
      return false;
    }else if(aboutMeController.text.trim().isEmpty) {
      errorToast(msg: "Please enter about Me");
      return false;
    }
    else {
      return true;
    }
  }


  var dropdownValue = 'january'.obs;
  var dropdownValueNumber = '4'.obs;
  var dropdownValueYear = '2012'.obs;

  // List of items in our dropdown menu
  var items = [
    'january',
    'february',
    'march',
    'april',
    'may',
    'june',
    'july',
    'august',
    'september',
    'october',
    'november',
    'december',
  ].obs;
  var itemsNumber = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
  ].obs;
  var itemsYear = [
    '2024',
    '2023',
    '2022',
    '2021',
    '2020',
    '2019',
    '2018',
    '2017',
    '2016',
    '2015',
    '2014',
    '2013',
    '2012',
    '2011',
    '2010',
    '2009',
    '2008',
  ].obs;

  void dropdownOnChange(newValue) {
    dropdownValue.value = newValue;
    update();
  }

  void dropdownChangeNumber(newValue) {
    dropdownValueNumber.value = newValue;
    update();
  }
  void dropdownChangeYear(newValue) {
    dropdownValueYear.value = newValue;
    update();
  }
}
