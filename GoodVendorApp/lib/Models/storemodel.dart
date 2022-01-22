import 'package:flutter/material.dart';

class storemodel with ChangeNotifier {
  final String id;
  final String title;
  final String imagePath;

  storemodel({
    required this.id,
    required this.title,
    required this.imagePath,
  });
}