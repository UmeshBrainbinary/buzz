import 'package:buzz/screens/product_page/widget/product_page_widget.dart';
import 'package:buzz/screens/user_edit/user_edit_controller.dart';
import 'package:buzz/screens/user_edit/widget/user_edit_widget.dart';
import 'package:buzz/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserEditScreen extends StatelessWidget {
  UserEditScreen({super.key});

  UserEditController controller = Get.put(UserEditController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf2f4f6),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              row(text: StringRes.userEdit, data: StringRes.userEdit),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        StringRes.myProfile,
                        style: TextStyle(fontSize: 18),
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
                      const ListTile(
                        leading: CircleAvatar(),
                        title: Text('Elon Musk'),
                        subtitle: Text(
                          'CEO',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: textField(
                                controller: controller.firstNameController,
                                text: StringRes.firstName,
                                hintText: 'Company'),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: textField(
                                controller: controller.firstNameController,
                                text: StringRes.lastName,
                                hintText: 'Last Name'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(
                            () => buildDropdownButton(
                              value: controller.dropdownValue.value,
                              items: controller.items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (value) {
                                controller.dropdownOnChange(value);
                              },
                            ),
                          ),
                          Obx(
                            () => buildDropdownButton(
                              value: controller.dropdownValueNumber.value,
                              items: controller.itemsNumber.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (value) {
                                controller.dropdownChangeNumber(value);
                              },
                            ),
                          ),
                          Obx(
                            () => buildDropdownButton(
                              value: controller.dropdownValueYear.value,
                              items: controller.itemsYear.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (value) {
                                controller.dropdownChangeYear(value);
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      textField(
                          controller: controller.emailController,
                          text: StringRes.email,
                          hintText: 'Email'),
                      const SizedBox(
                        height: 10,
                      ),
                      textField(
                          controller: controller.passwordController,
                          text: StringRes.password,
                          hintText: 'Password'),
                      const SizedBox(
                        height: 10,
                      ),
                      textField(
                          controller: controller.websiteController,
                          text: StringRes.website,
                          hintText: 'Website'),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          if (controller.validate()) {}
                        },
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.deepPurpleAccent,
                          ),
                          child: const Center(
                              child: Text(
                            StringRes.save,
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        StringRes.edit,
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: textField(
                                controller: controller.mobileController,
                                text: StringRes.mobile,
                                hintText: 'Enter Number'),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: textField(
                                controller: controller.editEmailController,
                                text: StringRes.emailId,
                                hintText: 'Enter email Id'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: textField(
                                controller: controller.addressController,
                                text: StringRes.address,
                                hintText: 'Home Address'),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: textField(
                                controller: controller.editWebsiteController,
                                text: StringRes.website,
                                hintText: 'Website Link'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: textField(
                                controller: controller.companyController,
                                text: StringRes.company,
                                hintText: StringRes.company),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: textField(
                                controller: controller.zipCodeController,
                                text: StringRes.zipCode,
                                hintText: StringRes.zipCode),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: textField(
                                controller: controller.homeTownController,
                                text: StringRes.homeTown,
                                hintText: StringRes.homeTown),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: textField(
                                controller: controller.cityController,
                                text: StringRes.cityEdit,
                                hintText: StringRes.cityEdit),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: textField(
                                controller: controller.countryController,
                                text: StringRes.countryEdit,
                                hintText: StringRes.countryEdit),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(StringRes.about),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        maxLines: 3,
                        controller: controller.aboutMeController,
                        style: const TextStyle(color: Colors.black, height: 1.3),
                        decoration: InputDecoration(
                          hintText: 'Enter about your description',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          InkWell(
                            onTap: () {
                               if (controller.validateEdit()) {}
                            },
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.deepPurpleAccent,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 8.0,right: 8),
                                child: Center(
                                  child: Text(
                                    StringRes.updateProfile,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
