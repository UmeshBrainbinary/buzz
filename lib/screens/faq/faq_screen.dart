import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  'FAQ',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                ),
                Spacer(),
                Icon(
                  Icons.home,
                  size: 18,
                ),
                SizedBox(
                  width: 7,
                ),
                Text('/'),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'FAQ',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(
                  width: 7,
                ),
                Text('/'),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'FAQ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 12),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  Card(
                    elevation: 2,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Quick Quetions are answered',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            buildContainer(text: 'What is Flutter?'),
                            const SizedBox(
                              height: 10,
                            ),
                            buildContainer(text: 'What is Dart?'),
                            const SizedBox(
                              height: 10,
                            ),
                            buildContainer(text: 'What are the Flutter Widgets?'),const SizedBox(
                              height: 10,
                            ),
                            buildContainer(text: 'What is pubspec.yaml file?'),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Intellectual Property',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            buildContainer(text: 'What is a property in Dart?'),
                            const SizedBox(
                              height: 10,
                            ),
                            buildContainer(text: 'What is method property?'),
                            const SizedBox(
                              height: 10,
                            ),
                            buildContainer(text: 'What is property in object?'),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Selling and Buying',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            buildContainer(text: 'What are Functions in Flutter?'),
                            const SizedBox(
                              height: 10,
                            ),
                            buildContainer(text: 'What is class in Flutter?'),
                            const SizedBox(
                              height: 10,
                            ),buildContainer(text: 'What is Oops in Dart?'),
                            const SizedBox(
                              height: 10,
                            ),buildContainer(text: 'What is on object method?'),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'User Accounts',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildContainer({required String text}) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey),),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Icon(Icons.not_listed_location_outlined),
            const SizedBox(
              width: 10,
            ),
            Text(text),
            const Spacer(),
            const Icon(Icons.keyboard_arrow_down_rounded),
          ],
        ),
      ),
    );
  }
}
