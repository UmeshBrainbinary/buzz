import 'package:buzz/utils/Assets_res.dart';
import 'package:buzz/utils/Color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/strings.dart';

class Chartscreen extends StatelessWidget {
  Chartscreen({super.key});

  final List<Map<String, String>> items = [
    {
      'image': AssetRes.man1,
      'title': 'Kate Bell',
      'date': 'Jan 12',
      'msg': 'How are you!',

    },
    {
      'image': AssetRes.man2,
      'title': 'Donna Mcclain',
      'date': 'Jan 13',
      'msg': 'We almost done'
    },
    {
      'image': AssetRes.man3,
      'title': 'sylvia Mays',
      'date': 'Jan 14',
      'msg': 'i am find what about you'
    },
    {
      'image': AssetRes.man1,
      'title': 'Anisa Black',
      'date': 'Jan 15',
      'msg': 'I hope you will be fine without payment'
    },
    {
      'image': AssetRes.man1,
      'title': 'Otis Patel',
      'date': 'Jan 16',
      'msg': 'Hii my friend'
    },
    {
      'image': AssetRes.man2,
      'title': 'Anisa Black',
      'date': 'Jan 15',
      'msg': 'I hope you will be fine without payment'
    },
    {
      'image': AssetRes.man3,
      'title': 'LILY_ros',
      'date': 'Jan 15',
      'msg': 'I hope you will be fine without payment'
    },
    {
      'image': AssetRes.man1,
      'title': 'Anisa Black',
      'date': 'Jan 15',
      'msg': 'I hope you will be fine without payment'
    },
  ];
  final List<Map<String, String>> messages = [
    {'text': 'The exports video eems oddy, what i can do it\n fix it?', 'sender': 'Bob', 'time': '10:00 AM'},
    {'text': 'shut dwon otherappication on your leptop to\n improve the animation', 'sender': 'Alice', 'time': '10:01 AM'},
    {'text': 'can it export inMP4 too?', 'sender': 'Bob', 'time': '10:02 AM'},
    {'text': 'You can convert the .webm files in this video\n convert from VEED', 'sender': 'Alice', 'time': '10:03 AM'},
    {'text': 'I\'m fine too!', 'sender': 'Bob', 'time': '10:04 AM'},
    {'text': 'I\'m fine too!', 'sender': 'Alice', 'time': '10:04 AM'},
    // Add more messages here
  ];
  final List<Map<String, String>> messages1 = [
    {
      'text': 'The exports video eems oddy, what i can do it',
      'time': '8:23 AM',

    },
    {
      'text': 'Shut down after leptop and try again in do it',
      'time': '10:01 AM',

    },
    {
      'text': 'I\'m good, thanks. And you?',
      'time': '10:02 AM',

    },
    {
      'text': 'The exports video eems oddy, what i can do it',
      'time': '8:23 AM',

    },
    {
      'text': 'The exports video eems oddy, what i can do it',
      'time': '8:23 AM',

    },
    {
      'text': 'The exports video eems oddy, what i can do it',
      'time': '8:23 AM',

    },
    {
      'text': 'The exports video eems oddy, what i can do it',
      'time': '8:23 AM',

    },
    {
      'text': 'The exports video eems oddy, what i can do it',
      'time': '8:23 AM',

    },
    // Add more messages here
  ];


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return ResponsiveBuilder(
        builder: (BuildContext context, SizingInformation sizingInformation) {
      if (sizingInformation.isDesktop) {
        width = 900;
        height = 1000;
      } else if (sizingInformation.isTablet) {
        width = 550;
        height = 900;
      } else if (sizingInformation.isMobile) {
        width = 350;
      }

      return Scaffold(
          backgroundColor: ColorRes.background,
          body: Column(
            children: [
              Container(
                color: ColorRes.white,
                child:
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child:
                  Row(
                    children: [
                      Icon(
                        Icons.menu,
                        color: ColorRes.gray,
                      ),
                      Spacer(),
                      Icon(Icons.search, color: ColorRes.gray),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.dark_mode_outlined, color: ColorRes.gray),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.notification_important, color: ColorRes.gray),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                          backgroundImage: AssetImage("assets/image/man1.png")),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            "Buzz",
                            style: TextStyle(color: ColorRes.black),
                          ),
                          Row(
                            children: [
                              Text("admin",
                                  style: TextStyle(color: ColorRes.gray)),
                              Icon(Icons.arrow_drop_down)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child:
                Row(
                  children: [
                    Text(
                      Strings.chart,
                      style: TextStyle(
                          fontSize: 23,
                          color: ColorRes.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(Icons.home_outlined, color: ColorRes.gray),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "/",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(Strings.app, style: TextStyle(color: ColorRes.black)),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "/",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      Strings.chart,
                      style: TextStyle(
                        fontSize: 15,
                        color: ColorRes.blue,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child:
                Container(
                  child:
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child:
                        Column(
                          children: [
                            Container(
                              child:
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15, bottom: 10, left: 10),
                                child: Text(Strings.Serch,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: ColorRes.textcolor)),
                              ),
                              height: Get.height * 0.06,
                              width: width * 0.39,
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: ColorRes.gray,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: Get.height * 0.67,
                              width: width * 0.32,
                              child: ListView.builder(
                                itemCount: items.length,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemBuilder: (context, index) {
                                  final item = items[index];
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      ListTile(
                                          contentPadding: EdgeInsets.only(
                                              left: 0.0, right: 0.0),
                                          leading: CircleAvatar(
                                              backgroundColor:index%2==0? ColorRes.blue: Colors.pinkAccent,
                                              child: Image.asset(
                                                item['image']!,height: 30,

                                              )),
                                          title: Text(
                                            item['title']!,
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black),
                                          ),
                                          trailing: Text(
                                            item['date']!,
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: ColorRes.textcolor),
                                          )),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        item['msg']!,
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: ColorRes.textcolor),
                                      )
                                    ],
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: double.infinity,
                        width: 1,
                        color: ColorRes.textcolor,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                              child:
                              Row(
                                children: [
                                  CircleAvatar(
                                      backgroundImage:
                                          AssetImage("assets/image/man1.png")),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                        
                                      children: [
                                    Text(
                                      "Elon Musk",
                                      style: TextStyle(color: ColorRes.black),
                                    ),
                                    Text(Strings.Onine,
                                        style: TextStyle(color: Colors.green)),
                                  ]),
                                 Spacer(),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border:
                                            Border.all(color: ColorRes.textcolor)),
                                    child: Icon(Icons.video_call_outlined,
                                        color: ColorRes.gray),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border:
                                            Border.all(color: ColorRes.textcolor)),
                                    child: Icon(Icons.phone_outlined,
                                        color: ColorRes.gray),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border:
                                            Border.all(color: ColorRes.textcolor)),
                                    child:
                                        Icon(Icons.more_vert, color: ColorRes.gray),
                                  )
                                ],
                              ),
                            ),
                            Container(height: 1,   width: Get.width*0.75,color: ColorRes.textcolor,),
                        
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                              child: Container(
                                height: Get.height * 0.41,
                                width: Get.width *0.74,
                        
                                child:
                                ListView.builder(
                                  itemCount: messages.length,
                                  itemBuilder: (context, index) {
                                    final message = messages[index];
                                    final isOdd = index.isEven; // Determine if the index is odd
                                    final isMine = message['sender'] == 'Alice'; // Change this to determine the sender
                                    return ChatMessage(
                                      text: message['text']!,
                                      sender: message['sender']!,
                                      time: message['time']!,
                                      isMine: isMine,
                                      isOdd: isOdd,
                                    );
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 35, bottom: 10, left: 10),
                                  child: Text(Strings.typemsg,
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: ColorRes.textcolor)),
                                ),
                                height: Get.height * 0.10,
                                width: Get.width * 1.3,
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                decoration: BoxDecoration(color: ColorRes.background,
                                  border: Border.all(
                                    color: ColorRes.gray,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                              child: Row(
                                children: [
                                  Icon(Icons.photo,color: ColorRes.textcolor,),
                                  SizedBox(width: 20,),
                                  Icon(Icons.join_inner,color: ColorRes.textcolor,),
                                  SizedBox(width: 20,),
                                  Icon(Icons.face,color: ColorRes.textcolor,),
                                Spacer(),
                        
                        
                                  Container(child: Text("Send",style: TextStyle(color: ColorRes.white),),
                                    padding: EdgeInsets.only(left: 35,right: 35,top: 10,bottom: 10),
                                    decoration: BoxDecoration(color: ColorRes.blue,
                                      borderRadius: BorderRadius.circular(3)
                        
                        
                                    ),
                                  )
                        
                                ],
                              ),
                            )
                        
                          ],
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: ColorRes.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: ColorRes.gray)),
                  height: Get.height * 0.8,
                  width: Get.width,
                ),
              ),
            ],
          ));
    });
  }
}
class ChatMessage extends StatelessWidget {
  final String text;
  final String sender;
  final String time;
  final bool isMine;
  final bool isOdd;

  ChatMessage({
    required this.text,
    required this.sender,
    required this.time,
    required this.isMine,
    required this.isOdd,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      alignment: isMine ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: isMine ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(width: MediaQuery.of(context).size.width/5,


            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 5),
                Row(
                  children: [
                    isMine?  ImageIcon(AssetImage("assets/image/forwaed.png"),color: ColorRes.textcolor): SizedBox(),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Container(width: MediaQuery.of(context).size.width/6,
                        padding: EdgeInsets.only(left: 20,bottom: 20,right: 20,top: 20),
                        decoration: BoxDecoration(
                            color: isMine ? ColorRes.blue : ColorRes.background,
                            borderRadius: BorderRadius.circular(10)
                      
                        ),
                        child: Text(text, style: TextStyle(
                            fontSize: 14,
                            color:isMine?ColorRes.white: ColorRes.gray),),
                      ),
                    ),
                    SizedBox(width: 10,),
                    isMine ?SizedBox():ImageIcon(AssetImage("assets/image/forwaed.png"),color: ColorRes.textcolor,)
                  ],
                ),
                SizedBox(height: 5),

              ],
            ),
          ),
          SizedBox(height: 5,),
          Text(
            time,
          style: TextStyle(
                fontSize: 13,
                color: ColorRes.textcolor), ),

        ],
      ),
    );
  }
}