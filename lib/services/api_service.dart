import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product.dart';

class ApiService {
  final String url = "https://fakestoreapi.com/products";

  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);

      return body
          .map(
            (item) => Product(
              name: item['title'],
              price: "${item['price']} TL",
              imagePath: item['image'],
              description: item['description'],
            ),
          )
          .toList();
    } else {
      throw "Veriler alınamadı!";
    }
  }
}
