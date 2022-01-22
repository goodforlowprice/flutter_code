import 'package:flutter/material.dart';

class CategoryList with ChangeNotifier {
  final String id;
  final String title;

  CategoryList({
    required this.id,
    required this.title,
  });
}
