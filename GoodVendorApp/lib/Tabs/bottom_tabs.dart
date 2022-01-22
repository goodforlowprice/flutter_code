import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:goodvendorapp/Tabs/AddProduct.dart';
import 'package:goodvendorapp/Tabs/Profile.dart';

import 'Home.dart';
import 'ProductList.dart';


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
            page: AddProduct(),
            icon: Icon(Icons.search),
          label: Text("Add Products"),),
        TabNavigationItem(
            page: ProductList(),
            icon: Icon(Icons.home),
          label: Text("Product List"),),
        TabNavigationItem(
            page: Profile(),
            icon: Icon(Icons.home),
          label: Text("Account"),),
      ];
}
