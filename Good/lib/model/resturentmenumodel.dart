import 'package:flutter/material.dart';

class resturentmenumodel with ChangeNotifier {
  final String id;
  final String title;

  resturentmenumodel({
    required this.id,
    required this.title,
  });
}
