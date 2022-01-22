import 'package:flutter/material.dart';
import 'package:good/ChildClasses/TodayOrder.dart';
import 'package:good/Component/Toolbar.dart';

import 'CustomColors.dart';

void main() {
  runApp(EmptyClass());
}

class EmptyClass extends StatefulWidget {
  @override
  ChildMyCart createState() => ChildMyCart();
}

class ChildMyCart extends State<EmptyClass> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Toolbar(
              title: "About us",
              cart_count: "0",
              show_cart:'no'
          ),
          Expanded(child: SingleChildScrollView(child: Column(children: [

          ],),))
        ],
      ),
    );
  }
}
