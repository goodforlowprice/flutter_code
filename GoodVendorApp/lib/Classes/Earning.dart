import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:goodvendorapp/Component/ProfileSectionFields.dart';
import 'package:goodvendorapp/Component/Toolbar.dart';
import 'package:goodvendorapp/Design/CustomColors.dart';
import 'package:goodvendorapp/Models/ActiveCoupons.dart';
import 'package:goodvendorapp/Models/EarningModel.dart';
import 'package:goodvendorapp/Models/ExpireCoupons.dart';

void main() {
  runApp(Earning());
}

class Earning extends StatefulWidget {
  @override
  ChildMyCart createState() => ChildMyCart();
}

class ChildMyCart extends State<Earning> {
  List<EarningModel> list=[
    EarningModel(id: "12346", payment: "Cash on pickup", amount: "\$200.00"),
    EarningModel(id: "44554", payment: "GooglePay", amount: "\$200.00"),
    EarningModel(id: "33322", payment: "GooglePay", amount: "\$120.00"),
    EarningModel(id: "65678", payment: "Cash on pickup", amount: "\$130.00"),
    EarningModel(id: "34568", payment: "Cash on pickup", amount: "\$240.00"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Toolbar(title: "Earnings", cart_count: "0", show_cart: 'no'),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10,),
                ProfileSectionFields(
                    get_title: "Total Earning \$230.00", bg_color: "orange", show_arrow: "no"),


                ListView.builder(
                    shrinkWrap: true,
                    itemCount: list.length,
                    padding: EdgeInsets.zero,
                    itemBuilder: (BuildContext context, int index) {
                      return
                        Container(
                          margin: EdgeInsets.only(left: 15,right: 15,top: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: CustomColors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset:
                                Offset(2, 5), // changes position of shadow
                              ),
                            ],
                            // border: Border.all(color: Colors.blueAccent)
                          ),
                          child: Row(
                            children: [
                              Expanded(child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Padding(padding: EdgeInsets.only(left: 10),
                                    child: Text("Booking ID : "+list[index].id,style: CustomColors.font_14_medium_orange,),),
                                  Padding(padding: EdgeInsets.only(left: 10,top: 7),
                                    child: Text("Payment Mode : "+list[index].payment,style: CustomColors.font_10_regular_grey,),)
                                ],)),

                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: CustomColors.dark_orange,
                                  borderRadius: BorderRadius.circular(10),
                                  // border: Border.all(color: Colors.blueAccent)
                                ),
                                child: Column(children: [
                                  Text("Payment",style: CustomColors.font_12_medium_white,),
                                  Text(list[index].amount,style: CustomColors.font_14_regular_white),
                                ],),
                              ),
                            ],
                          ),
                        );
                    }),



              ],
            ),
          ))
        ],
      ),
    );
  }
}
