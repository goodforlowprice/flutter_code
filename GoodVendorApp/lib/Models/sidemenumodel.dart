import 'package:flutter/material.dart';

class sidemenumodel with ChangeNotifier {
  final String title;
  final String image;

  sidemenumodel({
    required this.title,
    required this.image,
  });
}
