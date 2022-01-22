import 'package:flutter/material.dart';

class reviewmodel with ChangeNotifier {
  final String id;
  final String userimage;
  final String username;
  final String rating;
  final String date;

  reviewmodel({
    required this.id,
    required this.userimage,
    required this.username,
    required this.rating,
    required this.date,
  });
}
