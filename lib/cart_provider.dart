import 'package:flutter/material.dart';

class CartPrvovider extends ChangeNotifier {
  final List<Map<String, dynamic>> cart = [];

  void addProduct(Map<String, dynamic> product) {
    cart.add(product);
  }

  void removeProduct(Map<String, dynamic> product) {
    cart.add(product);
  }
}
