import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool
      isFavorite; //this is not final because it may change at runtime as a user can favorite or unfavorite a product at runtime.
  Product(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.imageUrl,
      this.isFavorite = false});
  void toggleFavoriteStatus() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
