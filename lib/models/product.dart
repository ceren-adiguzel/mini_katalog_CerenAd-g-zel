class Product {
  final String name;
  final String price;
  final String imagePath;
  final String description;

  Product({
    required this.name,
    required this.price,
    required this.imagePath,

    this.description = "Bu ürün yüksek kaliteli malzemelerden üretilmiştir.",
  });
}
