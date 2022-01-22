import 'package:flutter/material.dart';
import 'package:good/ChildClasses/TodayOrder.dart';
import 'package:good/Component/Toolbar.dart';

import 'CustomColors.dart';

void main() {
  runApp(MyCart());
}

class MyCart extends StatefulWidget {
  @override
  ChildMyCart createState() => ChildMyCart();
}

class ChildMyCart extends State<MyCart> {
  String button_status = "today_order";

  buttonclickFunction(value) {
   setState(() {
     button_status=value;
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Toolbar(
              title: "My Cart",
              cart_count: "0",
              show_cart:'no'
          ),
          Row(
            children: [
              Expanded(
                  child: GestureDetector(
                    onTap: () {
                      buttonclickFunction("today_order");
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 5,bottom: 15,left: 10),
                      padding: EdgeInsets.only(top: 12, bottom: 12),
                      decoration: BoxDecoration(
                        color: button_status == "today_order"
                            ? CustomColors.dark_orange
                            : CustomColors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: CustomColors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(2, 5),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "Today Order",
                          style: button_status == "today_order"
                              ? CustomColors.select_button_style
                              : CustomColors.unselect_button_style,
                        ),
                      ),
                    ),
                  )),
              Expanded(
                  child: GestureDetector(
                    onTap: () {
                      buttonclickFunction("order_history");
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 5,bottom: 15,right: 10),
                      padding: EdgeInsets.only(top: 12, bottom: 12),
                      decoration: BoxDecoration(
                        color: button_status == "order_history"
                            ? CustomColors.dark_orange
                            : CustomColors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: CustomColors.grey.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 7,
                            offset: Offset(2, 5),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "Order History",
                          style: button_status == "order_history"
                              ? CustomColors.select_button_style
                              : CustomColors.unselect_button_style,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
          Expanded(child: SingleChildScrollView(child: Column(children: [
            TodayOrder(title: "Today Order")
          ],),))
        ],
      ),
    );
  }
}
