
import 'package:buzz/screens/product_page/widget/product_page_widget.dart';
import 'package:buzz/screens/user_profile/widget/user_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'user_profile_controller.dart';
import 'package:buzz/utils/string.dart';

class UserProfileScreen extends StatefulWidget {
  UserProfileScreen({super.key});

  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> with SingleTickerProviderStateMixin {
  late TabController tabController;
  final TabController1 controller1 = Get.put(TabController1());

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      controller1.changeTabIndex(tabController.index);
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  Widget tabContainer1() {
    return SizedBox(
      width: 400,
      child: TabBar(
        controller: tabController,
        tabs: [
          const Tab(text: 'Profile'),
          const Tab(text: 'Network'),
          const Tab(text: 'Subscription'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf2f4f6),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              row(text: StringRes.userProfile, data: StringRes.userProfile),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Card(
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 30,
                    bottom: -30,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/user.png'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const Row(
                children: [
                  Text('Eloan musk'),
                  SizedBox(width: 20),
                  Icon(Icons.cloud_done_rounded,color: Colors.blue,),
                ],
              ),
              const SizedBox(height: 10,),
              const Text(StringRes.eloan),
              const SizedBox(height: 10,),
              const Row(
                children: [
                  Icon(Icons.card_giftcard),
                  SizedBox(width: 10,),
                  Text(StringRes.founder,style: TextStyle(color: Colors.blue),),
                  SizedBox(width: 10,),
                  Icon(Icons.location_on_outlined),
                  SizedBox(width: 10,),
                  Text(StringRes.vivian,style: TextStyle(color: Colors.blue),),
                ],
              ),
              const SizedBox(height: 10,),
             Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: Colors.white
               ),
               child: Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     tabContainer1(),
                     const SizedBox(height: 20,),
                     SizedBox(
                       height: 900, // Ensure the TabBarView has some height to be visible
                       child: TabBarView(
                         controller: tabController,
                         children: [
                           containerUser(),
                           containerUser(),
                           containerUser(),
                         ],
                       ),
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
