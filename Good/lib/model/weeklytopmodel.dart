import 'dart:ffi';

import 'package:flutter/material.dart';

class weeklytopmodel with ChangeNotifier {
  final String id;
  final String image;
  final String title;
  final String price;
  final String distance;
  final String storename;
  final double rating;
  final String cart_status;
  final int qty;
  final String fav_status;

  weeklytopmodel({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.distance,
    required this.storename,
    required this.rating,
    required this.cart_status,
    required this.qty,
    required this.fav_status,
  });
}
