import 'package:flutter/material.dart';

class discovermodel with ChangeNotifier {
  final String id;
  final String fav_status;
  final String image;
  final String title;
  final String distance;
  final double rating;
  final String stock_left;

  discovermodel({
    required this.id,
    required this.fav_status,
    required this.image,
    required this.title,
    required this.distance,
    required this.rating,
    required this.stock_left,
  });
}
