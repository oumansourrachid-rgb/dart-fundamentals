import 'dart:convert';

// 1. Model Class (OOP)
class Product {
  final int id;
  final String title;
  final double price;
  final bool inStock;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.inStock,
  });

  // 2. Factory Constructor: Kay-hwwel Map (JSON decoded) -> Product Object
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      // num.toDouble() kat-7miik ila ja l-thaman int (e.g. 100 f blass 100.0)
      price: (json['price'] as num).toDouble(),
      inStock: json['in_stock'],
    );
  }

  // 3. Method to Convert Object -> Map (Ila bghiti t-sfat data l API)
  Map<String, dynamic> toJson() {
    return {'id': id, 'title': title, 'price': price, 'in_stock': inStock};
  }
}

void main() {
  // Simulation dyal JSON String li ja mn API
  String apiResponse =
      '{"id": 1, "title": "Mouse Gamer", "price": 45.0, "in_stock": true}';

  // Step 1: String -> Map (jsonDecode)
  Map<String, dynamic> productMap = jsonDecode(apiResponse);

  // Step 2: Map -> Product Object (Product.fromJson)
  Product product = Product.fromJson(productMap);

  // Daba kat-khdem b Object 3adi w Safe 100%!
  print("Produit: ${product.title}");
  print("Thaman: $product.price USD");
  print("En Stock: ${product.inStock}");
}
