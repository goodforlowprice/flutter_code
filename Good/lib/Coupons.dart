import 'package:flutter/material.dart';
import 'package:good/ChildClasses/TodayOrder.dart';
import 'package:good/Component/Toolbar.dart';

import 'CustomColors.dart';
import 'model/fav_resturents_model.dart';

void main() {
  runApp(Coupons());
}

class Coupons extends StatefulWidget {
  @override
  ChildMyCart createState() => ChildMyCart();
}

class ChildMyCart extends State<Coupons> {
 List<String> list=["assets/serverimages/offer_1.png","assets/serverimages/offer_2.png"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Toolbar(title: "Coupons", cart_count: "0", show_cart: 'no'),
          Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10,right: 10),
                      child:ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemCount: list.length,
                          scrollDirection: Axis.vertical,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context,index)
                          {
                            return
                              GestureDetector(
                                child:  Expanded(
                                    child: SingleChildScrollView(
                                      child:
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        child:
                                        Image.asset(
                                          list[index],
                                          height: 150,
                                          width: 100,
                                          fit: BoxFit.fill,
                                        )
                                      ),
                                    )),
                              );

                          }
                      ),)
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
