import 'package:flutter/material.dart';

class paymentmethodsmodel with ChangeNotifier {
  final String id;
  final String image;
  final String title;

  paymentmethodsmodel({
    required this.id,
    required this.image,
    required this.title,
  });
}
