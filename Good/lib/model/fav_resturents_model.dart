import 'package:flutter/material.dart';

class fav_resturents_model with ChangeNotifier {
  final String id;
  final String fav_status;
  final String image;
  final String title;
  final String distance;
  final double rating;
  final String timing;

  fav_resturents_model({
    required this.id,
    required this.fav_status,
    required this.image,
    required this.title,
    required this.distance,
    required this.rating,
    required this.timing,
  });
}