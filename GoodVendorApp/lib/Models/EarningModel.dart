import 'package:flutter/material.dart';

class EarningModel with ChangeNotifier {
  final String id;
  final String payment;
  final String amount;

  EarningModel({
    required this.id,
    required this.payment,
    required this.amount,
  });
}
