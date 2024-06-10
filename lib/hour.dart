import 'package:flutter/material.dart';



class ProductList1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductItem(),
        ProductItem(),
      ],
    );
  }
}

class ProductItem extends StatefulWidget {
  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle tap if necessary
      },
      onHover: (isHovered) {
        setState(() {
          _isHovered = isHovered;
        });
      },
      child: Card(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  'https://via.placeholder.com/150',
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                if (_isHovered)
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.shopping_cart),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.favorite),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product Title',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text('\$26.00'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
