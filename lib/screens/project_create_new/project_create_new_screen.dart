import 'package:buzz/screens/project_create_new/project_create_new_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectCreateNewScreen extends StatelessWidget {
  ProjectCreateNewScreen({super.key});

  final ProjectCreateNewController controller =
      Get.put(ProjectCreateNewController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Wrap(
                children: [
                  Text('Create New'),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
              padding: const EdgeInsets.fromLTRB(20, 20, 30, 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.shade300),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "Product Information",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    // alignment: WrapAlignment.start,
                    // runSpacing: 10,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Product Name",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Do not exceed 20 characters when entering the product name.",
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 30),
                      Expanded(
                        child: TextField(
                          controller: TextEditingController(),
                          decoration: InputDecoration(
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blueAccent,
                                width: 2,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade400,
                                width: 1.5,
                              ),
                            ),
                            labelText: "Enter product name",
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    // alignment: WrapAlignment.start,
                    // runSpacing: 10,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "SKU",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "SKU is a scannable barcode and is the unit of measure in which the stock is product is managed",
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 30),
                      Expanded(
                        child: TextField(
                          controller: TextEditingController(),
                          decoration: InputDecoration(
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blueAccent,
                                width: 2,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade400,
                                width: 1.5,
                              ),
                            ),
                            labelText: "Enter SKU",
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    // alignment: WrapAlignment.start,
                    // runSpacing: 10,
                    children: [
                      const SizedBox(
                        width: 250,
                        child: Text(
                          "Price",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                      Expanded(
                        child: TextField(
                          controller: TextEditingController(),
                          decoration: InputDecoration(
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blueAccent,
                                width: 2,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade400,
                                width: 1.5,
                              ),
                            ),
                            prefixIcon: Container(
                              width: 40,
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                "\$",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            hintText: "000",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    // alignment: WrapAlignment.start,
                    // runSpacing: 10,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Category",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Please select your product category from the list provided.",
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 30),
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          value: '18+',
                          onChanged: (newValue) {},
                          items: const [
                            DropdownMenuItem<String>(
                              value: 'Under18',
                              child: Text('Under18'),
                            ),
                            DropdownMenuItem<String>(
                              value: '18+',
                              child: Text('18+'),
                            ),
                          ],
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade400,
                                width: 1.5,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade400,
                                width: 1.5,
                              ),
                            ),
                            hintText: "Select Your Category",
                            hintStyle: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    // alignment: WrapAlignment.start,
                    // runSpacing: 10,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Gender",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Set the gender for this product.",
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 30),
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          value: 'Male',
                          onChanged: (newValue) {},
                          items: const [
                            DropdownMenuItem<String>(
                              value: 'Male',
                              child: Text('Male'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Female',
                              child: Text('Female'),
                            ),
                          ],
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade400,
                                width: 1.5,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade400,
                                width: 1.5,
                              ),
                            ),
                            hintText: "Select Your Gender",
                            hintStyle: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    // alignment: WrapAlignment.start,
                    // runSpacing: 10,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Photo Product",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Recommended minimum with 1080pxX1080px.with a max size of 5MB only*.png*.png*.jpg.and*.jpeg images files are accepted.",
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 30),
                      Row(
                        children: List.generate(
                          4,
                          (index) => Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.shade600,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            margin: const EdgeInsets.only(right: 30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.file_upload_outlined,
                                  color: Colors.grey,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent.shade700,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 8),
                                  child: const Text(
                                    "Add image",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Text(
                                  "or Drop image to Upload",
                                  style: TextStyle(
                                    color: Colors.grey.shade400,
                                  ),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    // alignment: WrapAlignment.start,
                    // runSpacing: 10,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Status",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Set a status for your product to determine whenever your product is displayed or not.",
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 30),
                      CupertinoSwitch(
                        value: false,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    // alignment: WrapAlignment.start,
                    // runSpacing: 10,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Product description",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Set a description on a product to detail your product and better visibility.",
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 30),
                      Expanded(
                        child: TextField(
                          controller: TextEditingController(),
                          maxLines: 4,
                          decoration: InputDecoration(
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blueAccent,
                                width: 2,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade400,
                                width: 1.5,
                              ),
                            ),
                            labelText: "Enter product description",
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "Discount",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    // alignment: WrapAlignment.start,
                    // runSpacing: 10,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Discount type",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Set your discount type. you can choose the type of discount with a percent or cash discount.",
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 30),
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          value: 'Under18',
                          onChanged: (newValue) {},
                          items: const [
                            DropdownMenuItem<String>(
                              value: 'Under18',
                              child: Text('Under18'),
                            ),
                            DropdownMenuItem<String>(
                              value: '18+',
                              child: Text('18+'),
                            ),
                          ],
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade400,
                                width: 1.5,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade400,
                                width: 1.5,
                              ),
                            ),
                            hintText: "Select type",
                            hintStyle: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    // alignment: WrapAlignment.start,
                    // runSpacing: 10,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Set Discount",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Please fill in how many discount you will give for this products.",
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 30),
                      Expanded(
                        child: TextField(
                          controller: TextEditingController(),
                          decoration: InputDecoration(
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blueAccent,
                                width: 2,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade400,
                                width: 1.5,
                              ),
                            ),
                            labelText: "Enter nominal discount",
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "Variant",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        "Delete all variant",
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent.shade700),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 6),
                        child: Row(
                          children: [
                            Icon(
                              Icons.close,
                              color: Colors.blueAccent.shade700,
                            ),
                            Text(
                              "Add variant",
                              style: TextStyle(
                                color: Colors.blueAccent.shade700,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        child: Checkbox(
                          value: false,
                          onChanged: (value) {},
                          shape: const CircleBorder(),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "VARIANT IMAGE",
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "COLOR NAME",
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "SIZE",
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "STOCK",
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "SKU",
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "STATUS",
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Checkbox(
                          value: false,
                          onChanged: (value) {},
                          shape: const CircleBorder(),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          margin: const EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade500)),
                          child: Column(
                            children: [
                              const Icon(
                                Icons.file_upload_outlined,
                                color: Colors.grey,
                              ),
                              Text(
                                "Add image",
                                style: TextStyle(
                                  color: Colors.blueAccent.shade700,
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: TextField(
                            controller: TextEditingController(),
                            decoration: InputDecoration(
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blueAccent,
                                  width: 2,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey.shade400,
                                  width: 1.5,
                                ),
                              ),
                              labelText: "Color name",
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade400,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: DropdownButtonFormField<String>(
                            value: '28',
                            onChanged: (newValue) {},
                            items: const [
                              DropdownMenuItem<String>(
                                value: '28',
                                child: Text('28'),
                              ),
                              DropdownMenuItem<String>(
                                value: '30',
                                child: Text('30'),
                              ),
                              DropdownMenuItem<String>(
                                value: '32',
                                child: Text('32'),
                              ),
                              DropdownMenuItem<String>(
                                value: '34',
                                child: Text('34'),
                              ),
                              DropdownMenuItem<String>(
                                value: '36',
                                child: Text('36'),
                              ),
                              DropdownMenuItem<String>(
                                value: '38',
                                child: Text('38'),
                              ),
                              DropdownMenuItem<String>(
                                value: '40',
                                child: Text('40'),
                              ),
                            ],
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey.shade400,
                                  width: 1.5,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey.shade400,
                                  width: 1.5,
                                ),
                              ),
                              hintText: "Select",
                              hintStyle: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: TextField(
                            controller: TextEditingController(),
                            decoration: InputDecoration(
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blueAccent,
                                  width: 2,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey.shade400,
                                  width: 1.5,
                                ),
                              ),
                              labelText: "Enter Stock",
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade400,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: TextField(
                            controller: TextEditingController(),
                            decoration: InputDecoration(
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blueAccent,
                                  width: 2,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey.shade400,
                                  width: 1.5,
                                ),
                              ),
                              labelText: "Enter SKU",
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade400,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: CupertinoSwitch(
                          value: false,
                          onChanged: (value) {},
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      const Icon(Icons.done_all,color: Colors.grey,),
                      const SizedBox(width: 5),
                      Text(
                        "last saved",
                        style: TextStyle(
                          color: Colors.grey.shade500,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "Nov 9,2022-17.09",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "cancel",
                        style: TextStyle(
                          color: Colors.blueAccent.shade700,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blueAccent.shade700,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: const Row(
                          children: [
                            Icon(Icons.file_download_outlined,color: Colors.white,),
                            Text(
                              "Save Product",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}