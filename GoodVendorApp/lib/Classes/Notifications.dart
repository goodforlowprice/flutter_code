import 'package:flutter/material.dart';
import 'package:goodvendorapp/Component/Toolbar.dart';
import 'package:goodvendorapp/Design/CustomColors.dart';

void main() {
  runApp(Notifications());
}

class Notifications extends StatefulWidget {
  @override
  ChildMyCart createState() => ChildMyCart();
}

class ChildMyCart extends State<Notifications> {
  List<String> list=["1","2","3","4","5"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Toolbar(title: "Notifications", cart_count: "0", show_cart: 'no'),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child:
                  ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: list.length,
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context,index)
                      {
                        return
                          Row(
                            children: [
                              GestureDetector(

                                child: Padding(
                                  padding: EdgeInsets.only(left: 0,top: 25),
                                  child: Image.asset(
                                    'assets/serverimages/new_burger.png',
                                    height: 55,
                                    width: 55,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 10,top: 15),
                                        child: Text("Buger Hutt",
                                            style: CustomColors.font_12_regular),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 10,top: 5),
                                        child: Text("Give 20% off on all burger",
                                            style: CustomColors.font_10_regular_grey),
                                      ),
                                    ],
                                  )),
                              Padding(
                                padding: EdgeInsets.only(right: 0),
                                child: Text("02:00 PM",
                                    style: CustomColors.font_10_regular_grey),
                              ),
                            ],
                          );

                      }
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
