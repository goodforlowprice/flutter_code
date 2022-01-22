import 'package:flutter/material.dart';

class ActiveCoupons with ChangeNotifier {
  final String id;
  final String title;
  final String valid;
  final String max_users;
  final String discount;

  ActiveCoupons({
    required this.id,
    required this.title,
    required this.valid,
    required this.max_users,
    required this.discount,
  });
}
