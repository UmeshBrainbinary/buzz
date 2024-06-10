import 'package:buzz/screens/product_page/widget/product_page_widget.dart';
import 'package:buzz/screens/validation_form/validation_form_controller.dart';
import 'package:buzz/screens/validation_form/widget/validation_form_widget.dart';
import 'package:buzz/utils/string.dart';

import 'package:flutter/material.dart';


import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ValidationFormScreen extends StatelessWidget {
  ValidationFormScreen({super.key});

  ValidationController controller = Get.put(ValidationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf2f4f6),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: ResponsiveBuilder(
            builder:
                (BuildContext context, SizingInformation sizingInformation) {
              return Column(
                children: [
                  Form(
                    key: controller.formKey,
                    child: Column(
                      children: [
                        row(
                            text: StringRes.validationForm,
                            data: StringRes.validationForm),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Basic validation',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                const Divider(
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: textFieldValidation(
                                          validator: controller.validateFirstname,
                                          controller:
                                              controller.firstNameController,
                                          text: StringRes.firstName,
                                          hintText: 'Mark'),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 5.0, left: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text('Best Skills'),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          buildDropdownButtonValidation(
                                            value: controller
                                                .dropdownValueNumber.value,
                                            items: controller.items
                                                .map((String items) {
                                              return DropdownMenuItem(
                                                value: items,
                                                child: Text(items),
                                              );
                                            }).toList(),
                                            onChanged: (value) {
                                              controller
                                                  .dropdownChangeSkills(value);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: textFieldValidation(
                                        validator: controller.validateEmail,
                                          controller: controller.emailController,
                                          text: 'Email',
                                          hintText: 'Enter Email'),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: textFieldValidation(
                                          controller: controller.currencyController,
                                          text: 'Currency',
                                          hintText: 'Enter Currency'),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: textFieldValidation(
                                        validator: controller.validatePassword,
                                          controller: controller.passwordController,
                                          text: StringRes.password,
                                          hintText: 'Enter password'),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: textFieldValidation(
                                        validator: controller.validateWeblink,
                                          controller: controller.websiteController,
                                          text: StringRes.website,
                                          hintText: 'Enter weblink'),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: textFieldValidation(
                                          controller:
                                              controller.descriptionController,
                                          text: StringRes.description,
                                          hintText: 'Enter your comment'),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: textFieldValidation(
                                        validator: controller.validatePhone,
                                          controller: controller.phoneController,
                                          text: 'Phone(US)',
                                          hintText: '91+'),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Spacer(),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: textFieldValidation(
                                        keyboardType: TextInputType.number,
                                        validator: controller.validateDigits,
                                          controller: controller.digitsController,
                                          text: StringRes.digits,
                                          hintText: 'Enter Digits'),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Spacer(),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: textFieldValidation(
                                        keyboardType: TextInputType.number,
                                        validator: controller.validateNumber,
                                          controller: controller.numberController,
                                          text: StringRes.number,
                                          hintText: 'Enter number'),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Spacer(),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          textFieldValidation(
                                            validator: controller.validateRange,
                                              controller:
                                                  controller.rangeController,
                                              text: 'Range[1.5]',
                                              hintText: 'Enter Range'),
                                          Obx(
                                            () => Row(
                                              children: [
                                                Checkbox(
                                                  side: const BorderSide(
                                                      color: Colors.red),
                                                  checkColor: Colors.white,
                                                  activeColor: Colors.green,
                                                  value: controller.value.value,
                                                  onChanged: (value) {
                                                    controller.value.value = value!;
                                                  },
                                                ),
                                                Text(
                                                  StringRes.terms,
                                                  style: TextStyle(
                                                      color: controller.value.value
                                                          ? Colors.green
                                                          : Colors.red,
                                                      fontSize: sizingInformation
                                                                  .deviceScreenType ==
                                                              DeviceScreenType
                                                                  .mobile
                                                          ? 10
                                                          : 14),
                                                ),
                                              ],
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              controller.onTapSubmitForm(context);
                                            },
                                            child: Container(
                                              height: 40,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.deepPurpleAccent,
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, right: 8),
                                                child: Center(
                                                  child: Text(
                                                    'Submit Form',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Form(
                    key: controller.formKey1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Vertical Forms with icon',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Divider(
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            textFieldValidation(
                                validator: controller.validateUserName,
                                controller: controller.userController,
                                text: StringRes.userName,
                                hintText: StringRes.userName,
                                prefixIcon: const Icon(Icons.person)),
                            const SizedBox(
                              height: 10,
                            ),
                            textFieldValidation(
                                validator: controller.validatePasswordForm,
                                controller: controller.password,
                                text: StringRes.password,
                                hintText: StringRes.password,
                                prefixIcon: const Icon(Icons.lock_outline)),
                            const SizedBox(
                              height: 10,
                            ),
                            Obx(
                                  () => Row(
                                children: [
                                  Checkbox(
                                    side: const BorderSide(color: Colors.red),
                                    checkColor: Colors.white,
                                    activeColor: Colors.green,
                                    value: controller.checkValue.value,
                                    onChanged: (value) {
                                      controller.checkValue.value = value!;
                                    },
                                  ),
                                  Text(
                                    StringRes.checkMeOut,
                                    style: TextStyle(
                                        color: controller.checkValue.value
                                            ? Colors.green
                                            : Colors.red),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    controller.onTapSubmit(context);
                                  },
                                  child: Card(
                                    elevation: 5,
                                    child: Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Colors.deepPurpleAccent),
                                      child: const Padding(
                                        padding:
                                        EdgeInsets.only(left: 8.0, right: 8),
                                        child: Center(
                                            child: Text(
                                              StringRes.submit,
                                              style: TextStyle(color: Colors.white),
                                            )),
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  elevation: 5,
                                  child: Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white),
                                    child: const Padding(
                                      padding:
                                      EdgeInsets.only(left: 8.0, right: 8),
                                      child: Center(
                                          child: Text(
                                            StringRes.cancel,
                                            style: TextStyle(color: Colors.red),
                                          )),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
