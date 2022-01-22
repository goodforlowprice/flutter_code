import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Home.dart';
import 'Profile.dart';
import 'Stores.dart';
import 'Wishlist.dart';

class TabNavigationItem {
  final Widget page;
  final Widget label;
  final Icon icon;

  TabNavigationItem(
      {required this.page,
      required this.label,
      required this.icon});

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: Home(),
          icon: Icon(Icons.home),
          label: Text("Home"),
        ),
        TabNavigationItem(
            page: Stores(),
            icon: Icon(Icons.search),
          label: Text("Stores"),),
        TabNavigationItem(
            page: Wishlist(),
            icon: Icon(Icons.home),
          label: Text("Wishlist"),),
        TabNavigationItem(
            page: Profile(),
            icon: Icon(Icons.home),
          label: Text("Profile"),),
      ];
}
