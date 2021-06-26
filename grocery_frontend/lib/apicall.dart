import 'dart:core';
import 'product.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ProductProvider {
  List<Product> products = [];

  Future<List<Product>> fetchProducts() async {
    try {
      final response = await http.get(
        'http://192.168.1.15:8000/fruits/',
      );
      var data = json.decode(response.body) as List;
      products = data.map((json) => Product.fromJson(json)).toList();
      return products;
    } catch (e) {
      print('error $e');
    }
    return products;
  }
}