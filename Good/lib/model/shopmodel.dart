import 'package:flutter/material.dart';

class shopmodel with ChangeNotifier{
  final String id;
  final String imagepath;

   shopmodel({
    required this.id,
    required this.imagepath
});

}