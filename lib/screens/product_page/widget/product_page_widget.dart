import 'package:buzz/screens/product_page/product_page_controller.dart';
import 'package:buzz/utils/Color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

ProductPageController controller = Get.find<ProductPageController>();

Widget productTitle() {
  return row(
    text: 'Product Page',
    data: 'Product page',
  );
}

Row row({required String text,required String data,}) {
  return  Row(
  children: [
    Text(
      text,

      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    ),
    Spacer(),
    Icon(Icons.home_outlined, color: ColorRes.gray),
    SizedBox(
      width: 10,
    ),
    Text('/'),
    SizedBox(
      width: 10,
    ),
    Text('E-Commerce'),
    SizedBox(
      width: 10,
    ),
    Text('/'),
    SizedBox(
      width: 10,
    ),
    Text(
      data,

      style: TextStyle(color: Colors.blue),
    )
  ],
);
}
Widget listProduct(){
  return ResponsiveBuilder(
    builder: (BuildContext context, SizingInformation sizingInformation) {
      return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Woman pink shirt',style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text(
                    '\$${26}.00',
                    style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    '\$${350}.00',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 1,
                width: sizingInformation.deviceScreenType ==
                    DeviceScreenType.tablet?250:
                sizingInformation.deviceScreenType ==
                    DeviceScreenType.mobile?200:400,
                color: Colors.grey,
              ),
              SizedBox(height: 10,),
              Text(
                  'nvufreireireireireign v henfriugwnvrie vriujgnvir bnti \ndehvfeihbvihefndkncv ',
              style: TextStyle(fontSize: sizingInformation.deviceScreenType ==
                  DeviceScreenType.tablet?10:
              sizingInformation.deviceScreenType ==
                  DeviceScreenType.mobile?8:15),),
              SizedBox(height: 10,),
              Container(
                height: 1,
                width: sizingInformation.deviceScreenType ==
                    DeviceScreenType.tablet?250:
                sizingInformation.deviceScreenType ==
                    DeviceScreenType.mobile?200:400,
                color: Colors.grey,
              ),
              SizedBox(height: 10,),
              buildRow(
                text: 'Brand : ',
                width: 50,
                data: 'Brand',
              ),
              buildRow(text: 'Availability : ', data: 'In stock',width: 20),
              buildRow(text: 'Seller : ', data: 'ABC',width: 50),
              buildRow(text: 'Fabric : ', data: 'Cotton',width: 45),
              SizedBox(height: 10,),
              Container(
                height: 1,
                width: sizingInformation.deviceScreenType ==
                    DeviceScreenType.tablet?250:
                sizingInformation.deviceScreenType ==
                    DeviceScreenType.mobile?200:400,
                color: Colors.grey,
              ),
              SizedBox(height: 10,),
              Text(
                'Share it',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  buildContainer(
                    height: sizingInformation.deviceScreenType ==
                        DeviceScreenType.mobile?20:40,
                      width: sizingInformation.deviceScreenType ==
                          DeviceScreenType.mobile?20:40,
                      image: 'assets/images/google.png',),
                  SizedBox(
                    width: 10,
                  ),
                  buildContainer(
                    height: sizingInformation.deviceScreenType ==
                        DeviceScreenType.mobile?20:40,
                      width: sizingInformation.deviceScreenType ==
                          DeviceScreenType.mobile?20:40,
                      image: 'assets/images/wifi.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  buildContainer(
                      height: sizingInformation.deviceScreenType ==
                          DeviceScreenType.mobile?20:40,
                      width: sizingInformation.deviceScreenType ==
                          DeviceScreenType.mobile?20:40,
                      image: 'assets/images/facebook.png'),
                  SizedBox(
                    width: 10,
                  ),
                  buildContainer(
                      height: sizingInformation.deviceScreenType ==
                          DeviceScreenType.mobile?20:40,
                      width: sizingInformation.deviceScreenType ==
                          DeviceScreenType.mobile?20:40,
                      image: 'assets/images/instagram.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  buildContainer(
                      height: sizingInformation.deviceScreenType ==
                          DeviceScreenType.mobile?20:40,
                      width: sizingInformation.deviceScreenType ==
                          DeviceScreenType.mobile?20:40,
                      image: 'assets/images/twitter.png'),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 1,
                width:sizingInformation.deviceScreenType ==
                    DeviceScreenType.tablet?250:
                sizingInformation.deviceScreenType ==
                    DeviceScreenType.mobile?200:400,
                color: Colors.grey,
              ),
              SizedBox(height: 10,),
              Text('Rate Now'),

              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey,
                    size: 15,
                  ),
                  Text("(250 review)")
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 1,
                width: sizingInformation.deviceScreenType ==
                    DeviceScreenType.tablet?250:
                sizingInformation.deviceScreenType ==
                    DeviceScreenType.mobile?200:400,
                color: Colors.grey,
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  buttonContainer(
                      color: Colors.deepPurpleAccent,
                      icon: Icons.shopping_cart,
                      text: 'Add to Cart',
                      size:  sizingInformation.deviceScreenType ==
                          DeviceScreenType.mobile?8:15,
                  fontSize:  sizingInformation.deviceScreenType ==
                      DeviceScreenType.tablet?10:
                  sizingInformation.deviceScreenType ==
                      DeviceScreenType.mobile?8
                      :15),
                  SizedBox(
                    width: 10,
                  ),
                  buttonContainer(
                      color: Colors.green,
                      icon: Icons.shopping_cart,
                      text: 'By Now',
                      size:  sizingInformation.deviceScreenType ==
                          DeviceScreenType.mobile?8:15,
                  fontSize:  sizingInformation.deviceScreenType ==
                      DeviceScreenType.tablet?10:
                  sizingInformation.deviceScreenType ==
                      DeviceScreenType.mobile?8:15),
                  SizedBox(
                    width: 10,
                  ),
                  buttonContainer(
                      color: Colors.pink,
                      icon: Icons.favorite_border,
                      text: 'Wishist',
                      size:  sizingInformation.deviceScreenType ==
                          DeviceScreenType.mobile?8:15,
                  fontSize: sizingInformation.deviceScreenType ==
                      DeviceScreenType.tablet?10:
                  sizingInformation.deviceScreenType ==
                      DeviceScreenType.mobile?8:15),
                ],
              )
            ],
          ),
        ),
      );
    }
  );


}
Row buildRow({required String text, required String data,double? width,   double? height}) {
  return Row(
    children: [
      Text(text),
      SizedBox(width: width,),
      Text(data),
    ],
  );
}
Container buttonContainer(
    {required String text, IconData? icon, Color? color,double? fontSize,double? size}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: color,
    ),
    height: 30,
    child: Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: size,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white,fontSize: fontSize),
          )
        ],
      ),
    ),
  );
}

Container buildContainer({required String image,double? height,double? width}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: Colors.grey)),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image.asset(
        image,
        fit: BoxFit.fill,
      ),
    ),
  );
}

Widget tabContainer(){
  return Card(
    color: Colors.white,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildTabItem('Fabric', 0),
                  _buildTabItem('Video', 1),
                  _buildTabItem('Details', 2),
                  _buildTabItem('Brand', 3),
                ],
              );
            }),
            const SizedBox(
              height: 20,
            ),
            Obx(() {
              return SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IndexedStack(
                      index: controller.selectedIndex.value,
                      children: [
                        _buildTabContent('Fabric Content vhjidkn dsv,nmveogj isdvg9eszj viejo ewns vcdsjvnifedm  vkifdvn   ikjh8oiu8i hjfcukvwnkisz vkdsfehv8oewajc uhicfuewcn'),
                        _buildTabContent('Video Content'),
                        _buildTabContent('Details Content'),
                        _buildTabContent('Brand Content'),
                      ],
                    ),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    ),
  );

}

Widget _buildTabContent(String content) {
  return Center(
    child: ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return SizedBox(
            width:sizingInformation.deviceScreenType ==
                DeviceScreenType.mobile? 320:
            sizingInformation.deviceScreenType ==
                DeviceScreenType.tablet?500:600,
            child: Text(content));
      },

    ),
  );
}

  Widget _buildTabItem(String title, int index) {
    return GestureDetector(
      onTap: () {
        controller.changeIndex(index);
      },
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,

              /*controller.selectedIndex.value == index
                  ? Colors.blue
                  : Colors.black,*/
              fontWeight: controller.selectedIndex.value == index
                  ? FontWeight.bold
                  : FontWeight.normal,
            ),
          ),
          if (controller.selectedIndex.value == index)
            Container(
              height: 2,
              width: 60,
              color: Colors.blue,
            ),
        ],
      ),
    );
  }


