import 'package:flutter/material.dart';

class cartmodel with ChangeNotifier {
  final String id;
  final String image;
  final String title;
  final String stock;
  final String selling_price;
  final String actual_price;
  final String qty;

  cartmodel({
    required this.id,
    required this.image,
    required this.title,
    required this.stock,
    required this.selling_price,
    required this.actual_price,
    required this.qty,
  });
}
