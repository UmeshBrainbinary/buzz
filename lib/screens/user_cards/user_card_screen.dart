import 'package:buzz/screens/product_page/widget/product_page_widget.dart';
import 'package:buzz/utils/string.dart';
import 'package:flutter/material.dart';

class UserCardScreen extends StatelessWidget {
  const UserCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf2f4f6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: row(text: StringRes.userCards, data: StringRes.userCards),
            ),
            Wrap(
              spacing: 10,
              children: [
                folderItem(),
                folderItem(),
                folderItem(),
                folderItem(),
                folderItem(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget folderItem() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 340,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white
          //color: isSelected ? Colors.blue.shade50 : Colors.white,
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/user.png'),
            radius: 30,
          ),
          SizedBox(
            height: 10,
          ),
          Text('M.S Dhoni'),
          SizedBox(
            height: 10,
          ),
          Text('Captain'),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Column(
                children: [
                  Text('1908'),
                  Text(
                    'Posts',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 20,
                width: 1,
                color: Colors.grey,
              ),
              SizedBox(
                width: 20,
              ),
              const Column(
                children: [
                  Text('1908'),
                  Text(
                    'Followers',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 20,
                width: 1,
                color: Colors.grey,
              ),
              SizedBox(
                width: 20,
              ),
              const Column(
                children: [
                  Text('1908'),
                  Text(
                    'Following',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/user.png'),
                      radius: 20,
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.deepPurpleAccent),
            child: Center(
              child: Text(
                'View Profile',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
