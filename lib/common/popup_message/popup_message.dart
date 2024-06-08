
import 'package:flutter/material.dart';
import 'package:get/get.dart';

errorToast({required String msg}){
  Get.snackbar("Error", msg,  colorText: Colors.white,backgroundColor: Colors.red);
}

showToast({required String msg}){
  Get.snackbar("Success", msg,  colorText:  Colors.white,backgroundColor: Colors.deepPurpleAccent);
}