class Product {
  final String name;
  final String subName;
  final String imageUrl;
  final double price;
  final double rating;
  bool isLiked;

  Product({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.rating,
    required this.subName,
    this.isLiked = false,
  });
}
