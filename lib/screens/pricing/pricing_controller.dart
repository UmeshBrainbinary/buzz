import 'package:get/get.dart';

class PricingController extends GetxController{
  var isSwitched = false.obs;
  var isAnnualSelected = true.obs;

  void toggleTab() {
    isAnnualSelected.value = !isAnnualSelected.value;
  }

  void toggleSwitch(bool value) {
    isSwitched.value = value;
  }


  List<Map> data = [
    {
      'image' : 'assets/images/buzz.png',
      'title' : 'Starter',
      'subtitle' : 'Lorem ipsum is simply dummy text of the printing in types...',
      'rent' : "55",
      'text' : '/mo',
      'text1' : '29 Admin  Account',
      'text2' : '30 day chat history',
      'text3' : 'Email reminders',
      'text4' : 'Email & chat support',
      'text5' : 'Template Library',

    },{
      'image' : 'assets/images/buzz.png',
      'title' : 'Starter',
      'subtitle' : 'Lorem ipsum is simply dummy text of the printing in types...',
      'rent' : "55",
      'text' : '/mo',
      'text1' : '29 Admin  Account',
      'text2' : '30 day chat history',
      'text3' : 'Email reminders',
      'text4' : 'Email & chat support',
      'text5' : 'Template Library',

    },{
      'image' : 'assets/images/buzz.png',
      'title' : 'Starter',
      'subtitle' : 'Lorem ipsum is simply dummy text of the printing in types...',
      'rent' : "55",
      'text' : '/mo',
      'text1' : '29 Admin  Account',
      'text2' : '30 day chat history',
      'text3' : 'Email reminders',
      'text4' : 'Email & chat support',
      'text5' : 'Template Library',

    },{
      'image' : 'assets/images/buzz.png',
      'title' : 'Starter',
      'subtitle' : 'Lorem ipsum is simply dummy text of the printing in types...',
      'rent' : "55",
      'text' : '/mo',
      'text1' : '29 Admin  Account',
      'text2' : '30 day chat history',
      'text3' : 'Email reminders',
      'text4' : 'Email & chat support',
      'text5' : 'Template Library',

    },
  ];
  List<Map> dataMonthly = [
    {
      'title' : 'Starter',
      'rent' : "55",
      'text' : '/mo',
      'text1' : '29 Admin  Account',
      'text2' : '30 day chat history',
      'text3' : 'Email reminders',
      'text4' : 'Email & chat support',
      'text5' : 'Template Library',

    }, {
      'title' : 'Starter',
      'rent' : "55",
      'text' : '/mo',
      'text1' : '29 Admin  Account',
      'text2' : '30 day chat history',
      'text3' : 'Email reminders',
      'text4' : 'Email & chat support',
      'text5' : 'Template Library',

    }, {
      'title' : 'Starter',
      'rent' : "55",
      'text' : '/mo',
      'text1' : '29 Admin  Account',
      'text2' : '30 day chat history',
      'text3' : 'Email reminders',
      'text4' : 'Email & chat support',
      'text5' : 'Template Library',

    }, {
      'title' : 'Starter',
      'rent' : "55",
      'text' : '/mo',
      'text1' : '29 Admin  Account',
      'text2' : '30 day chat history',
      'text3' : 'Email reminders',
      'text4' : 'Email & chat support',
      'text5' : 'Template Library',

    },
  ];
}