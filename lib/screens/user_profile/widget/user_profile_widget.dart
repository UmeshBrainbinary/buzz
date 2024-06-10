import 'package:buzz/screens/user_profile/user_profile_controller.dart';
import 'package:buzz/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

TabController1 controller1 = Get.find<TabController1>();

Widget containerUser() {
  return ResponsiveBuilder(
    builder: (BuildContext context, SizingInformation sizingInformation) {
      return SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
            
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundImage: AssetImage('assets/images/user.png'),
                                  ),
                                  SizedBox(width: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Deepika padukone'),
                                      Text('Celebrity',
                                        style: const TextStyle(color: Colors.grey),),
                                    ],
                                  ),
                                  Spacer(),
                                  Icon(Icons.settings, color: Colors.grey),
                                ],
                              ),
                               SizedBox(height: 20,),
                              Row(
                                children: [
                                  const SizedBox(width: 20,),
                                  const Column(
                                    children: [
                                      Text('1908'),
                                      Text('Posts',
                                        style: TextStyle(color: Colors.grey),),
                                    ],
                                  ),
                                  const SizedBox(width: 20,),
                                  Container(
                                    height: 20,
                                    width: 1,
                                    color: Colors.grey,
                                  ),
                                   SizedBox(width: 20,),
                                  const Column(
                                    children: [
                                      Text('1908'),
                                      Text('Followers',
                                        style: TextStyle(color: Colors.grey),),
                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                  Container(
                                    height: 20,
                                    width: 1,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(width: 20,),
                                  const Column(
                                    children: [
                                      Text('1908'),
                                      Text('Following',
                                        style: TextStyle(color: Colors.grey),),
                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                ],
                              ),
                              const SizedBox(height: 10,),
                              rowProfile(
                                  icon: Icons.calendar_today_outlined,
                                  text: StringRes.went,
                                  data: 'India'
                              ),
                              const SizedBox(height: 10,),
                              rowProfile(
                                  icon: Icons.wallet_giftcard_outlined,
                                  text: StringRes.worked,
                                  data: 'Company'
                              ),
                              const SizedBox(height: 10,),
                              rowProfile(
                                  icon: Icons.home_outlined,
                                  text: StringRes.live,
                                  data: 'India,Gujarat'
                              ),
                              const SizedBox(height: 10,),
                              rowProfile(
                                  icon: Icons.location_on_outlined,
                                  text: StringRes.from,
                                  data: 'Settle,WA'
                              ),
            
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              const Row(
                                children: [
                                  Text('You know this people ?'),
                                  Spacer(),
                                  Icon(Icons.more_vert)
                                ],
                              ),
                              Container(
                                height: 350,
                                child: ListView.builder(
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return const ListTile(
                                      leading: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/images/user.png'),
                                      ),
                                      title: Text('Eloan Musk'),
                                      subtitle: Text('Tumblr'),
                                      trailing: Icon(Icons.done),
                                    );
                                  },),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              const Row(
                                children: [
                                  Text('Friends'),
                                  Spacer(),
                                  Text('View all'),
                                ],
                              ),
                              Container(
                                height: 400,
                                child: GridView.builder(
                                  itemCount: 8,
                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                    childAspectRatio:1.5
                                ),
                                  itemBuilder: (BuildContext context, int index) {
                                    return Column(
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.purpleAccent
                                          ),
                                          child: Image.asset('assets/images/user.png',fit: BoxFit.fill,),
                                        ),
                                        const Text('data')
                                      ],
                                    );
                                  },),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              const Row(
                                children: [
                                  Text('Groups'),
                                  Spacer(),
                                  Text('View all'),
                                ],
                              ),
                              SizedBox(
                                height: 320,
                                child: ListView.builder(
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                  return const ListTile(
                                    leading: CircleAvatar(),
                                    title: Text('bnjmx'),
                                    subtitle:  Text('bnjmx'),
                                  );
                                },),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              const Row(
                                children: [
                                  Text('Links'),
                                  Spacer(),
                                  Text('View all'),
                                ],
                              ),
                              SizedBox(
                                height: 320,
                                child: ListView.builder(
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return const ListTile(
                                      leading: CircleAvatar(
                                        backgroundColor: Colors.green,
                                      ),
                                      title: Text('bnjmx'),
                                      subtitle:  Text('bnjmx'),
                                    );
                                  },),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      sizingInformation.deviceScreenType ==
                          DeviceScreenType
                              .mobile ||  sizingInformation.deviceScreenType ==
                          DeviceScreenType
                              .tablet ?
                      Column(
                        children: [
                          Container(
                            height: 400,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [

                                      CircleAvatar(
                                        radius: 20,
                                      ),
                                      SizedBox(width: 20,),
                                      Column(
                                        children: [
                                          Text('Deepika padukone'),
                                          Text('29 Min',
                                            style: TextStyle(color: Colors.grey),),

                                        ],
                                      ),
                                    ],
                                  ),
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset('assets/images/hours.png',)),
                                  const Text('data'),
                                  const Text('data'),
                                  const Row(
                                    children: [
                                      Icon(Icons.favorite),
                                      Text('Like'),
                                      Text('1k comment 12 shares'),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 400,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [

                                      CircleAvatar(
                                        radius: 20,
                                      ),
                                      SizedBox(width: 20,),
                                      Column(
                                        children: [
                                          Text('Deepika padukone'),
                                          Text('29 Min',
                                            style: TextStyle(color: Colors.grey),),

                                        ],
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset('assets/images/person.png',width: sizingInformation.deviceScreenType ==
                                              DeviceScreenType
                                                  .mobile?
                                          130: 250,height: 250,fit: BoxFit.fill,)),
                                      ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset('assets/images/person.png',width: sizingInformation.deviceScreenType ==
                                              DeviceScreenType
                                                  .mobile?
                                          130: 250,height: 250,fit: BoxFit.fill,)),
                                    ],
                                  ),
                                  const Text('data'),
                                  const Text('data'),
                                  const Row(
                                    children: [
                                      Icon(Icons.favorite),
                                      Text('Like'),
                                      Text('1k comment 12 shares'),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 400,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [

                                      CircleAvatar(
                                        radius: 20,
                                      ),
                                      SizedBox(width: 20,),
                                      Column(
                                        children: [
                                          Text('Deepika padukone'),
                                          Text('29 Min',
                                            style: TextStyle(color: Colors.grey),),

                                        ],
                                      ),
                                    ],
                                  ),
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset('assets/images/hours.png',)),
                                  const Text('data'),
                                  const Text('data'),
                                  const Row(
                                    children: [
                                      Icon(Icons.favorite),
                                      Text('Like'),
                                      Text('1k comment 12 shares'),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 450,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 20,
                                      ),
                                      SizedBox(width: 20,),
                                      Column(
                                        children: [
                                          Text('Deepika padukone'),
                                          Text('29 Min',
                                            style: TextStyle(color: Colors.grey),),

                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset('assets/images/person.png',width: sizingInformation.deviceScreenType ==
                                              DeviceScreenType
                                                  .mobile?
                                          130: 250,height: 250,fit: BoxFit.fill,)),
                                      ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset('assets/images/person.png',width: sizingInformation.deviceScreenType ==
                                              DeviceScreenType
                                                  .mobile?
                                          130: 250,height: 250,fit: BoxFit.fill,)),
                                    ],
                                  ),
                                  const SizedBox(height: 10,),
                                  const Text('data'),
                                  const SizedBox(height: 10,),
                                  const Text('data'),
                                  const SizedBox(height: 10,),
                                  const Row(
                                    children: [
                                      Icon(Icons.favorite),
                                      Text('Like'),
                                      Text('1k comment 12 shares'),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),

                        ],
                      )
                          :const SizedBox(),
                    ],
                  ),
                ),
            const SizedBox(width: 20,),
                sizingInformation.deviceScreenType ==
                    DeviceScreenType
                        .desktop?
                Column(
                  children: [
                    Container(
                      height: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [

                                CircleAvatar(
                                  radius: 20,
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  children: [
                                    Text('Deepika padukone'),
                                    Text('29 Min',
                                      style: TextStyle(color: Colors.grey),),

                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset('assets/images/hours.png',)),
                            const Text('data'),
                            const Text('data'),
                            const Row(
                              children: [
                                Icon(Icons.favorite),
                                Text('Like'),
                                Text('1k comment 12 shares'),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      height: 450,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [

                                CircleAvatar(
                                  radius: 20,
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  children: [
                                    Text('Deepika padukone'),
                                    Text('29 Min',
                                      style: TextStyle(color: Colors.grey),),

                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset('assets/images/person.png')),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset('assets/images/person.png')),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            const Text('data'),
                            const SizedBox(height: 10,),
                            const Text('data'),
                            const SizedBox(height: 10,),
                            const Row(
                              children: [
                                Icon(Icons.favorite),
                                Text('Like'),
                                Text('1k comment 12 shares'),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      height: 450,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [

                                CircleAvatar(
                                  radius: 20,
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  children: [
                                    Text('Deepika padukone'),
                                    Text('29 Min',
                                      style: TextStyle(color: Colors.grey),),

                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset('assets/images/hours.png',)),
                            const SizedBox(height: 10,),
                            const Text('data'),
                            const SizedBox(height: 10,),
                            const Text('data'),
                            const SizedBox(height: 10,),
                            const Row(
                              children: [
                                Icon(Icons.favorite),
                                Text('Like'),
                                Text('1k comment 12 shares'),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      height: 450,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [

                                CircleAvatar(
                                  radius: 20,
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  children: [
                                    Text('Deepika padukone'),
                                    Text('29 Min',
                                      style: TextStyle(color: Colors.grey),),

                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset('assets/images/person.png',)),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset('assets/images/person.png',)),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            const Text('data'),
                            const SizedBox(height: 10,),
                            const Text('data'),
                            const SizedBox(height: 10,),
                            const Row(
                              children: [
                                Icon(Icons.favorite),
                                Text('Like'),
                                Text('1k comment 12 shares'),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
            
                  ],
                ):
                const SizedBox()
              ],
            ),
          ],
        ),
      );
    },
  );
}

Row rowProfile({IconData? icon, required String text, required String data}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Icon(icon, size: 16, color: Colors.grey,),
      const SizedBox(width: 5,),
      Text(text, style: const TextStyle(color: Colors.grey),),
      const SizedBox(width: 5,),
      Text(data),
    ],
  );
}
