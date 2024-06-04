import 'package:flutter/material.dart';

Widget productTitle() {
  return const Row(
    children: [
      Text(
        'Product Page',
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      Spacer(),
      Icon(
        Icons.home,
        size: 18,
      ),
      SizedBox(
        width: 2,
      ),
      Text('/'),
      SizedBox(
        width: 2,
      ),
      Text('E-Commers'),
      SizedBox(
        width: 2,
      ),
      Text('/'),
      SizedBox(
        width: 2,
      ),
      Text(
        'Product page',
        style: TextStyle(color: Colors.blue),
      )
    ],
  );
}
Widget listProduct(){
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
            width: 400,
            color: Colors.grey,
          ),
          SizedBox(height: 10,),
          Text(
              'nvufreireireireireign v henfriugwnvrie vriujgnvir bnti \ndehvfeihbvihefndkncv '),
          SizedBox(height: 10,),
          Container(
            height: 1,
            width: 400,
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
            width: 400,
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
                  image: 'assets/images/girls.png'),
              SizedBox(
                width: 10,
              ),
              buildContainer(
                  image: 'assets/images/girls.png'),
              SizedBox(
                width: 10,
              ),
              buildContainer(
                  image: 'assets/images/facebook.png'),
              SizedBox(
                width: 10,
              ),
              buildContainer(
                  image: 'assets/images/girls.png'),
              SizedBox(
                width: 10,
              ),
              buildContainer(
                  image: 'assets/images/girls.png'),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          SizedBox(height: 10,),
          Container(
            height: 1,
            width: 400,
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
            width: 400,
            color: Colors.grey,
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              buttonContainer(
                  color: Colors.deepPurpleAccent,
                  icon: Icons.shopping_cart,
                  text: 'Add to Cart'),
              SizedBox(
                width: 10,
              ),
              buttonContainer(
                  color: Colors.green,
                  icon: Icons.shopping_cart,
                  text: 'By Now'),
              SizedBox(
                width: 10,
              ),
              buttonContainer(
                  color: Colors.pink,
                  icon: Icons.favorite_border,
                  text: 'Wishist'),
            ],
          )
        ],
      ),
    ),
  );


}
Row buildRow({required String text, required String data,double? width,   double? height,}) {
  return Row(
    children: [
      Text(text),
      SizedBox(width: width,),
      Text(data),
    ],
  );
}
Container buttonContainer(
    {required String text, IconData? icon, Color? color}) {
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
            size: 18,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    ),
  );
}

Container buildContainer({required String image}) {
  return Container(
    height: 40,
    width: 40,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: Colors.grey)),
    child: Image.asset(
      image,
      fit: BoxFit.fill,
    ),
  );
}