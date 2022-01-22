import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:goodvendorapp/Component/ProfileSectionFields.dart';
import 'package:goodvendorapp/Component/Toolbar.dart';
import 'package:goodvendorapp/Design/CustomColors.dart';
import 'package:goodvendorapp/Models/ActiveCoupons.dart';
import 'package:goodvendorapp/Models/ExpireCoupons.dart';

void main() {
  runApp(Coupons());
}

class Coupons extends StatefulWidget {
  @override
  ChildMyCart createState() => ChildMyCart();
}

class ChildMyCart extends State<Coupons> {
  List<ActiveCoupons> activecouponlist=[
    ActiveCoupons(id: "1", title: "10 PERCENT", valid: "Valid till 25 january", max_users: "200 users max", discount: "10%"),
    ActiveCoupons(id: "2", title: "NEWYEAR", valid: "Valid till 30 january", max_users: "100 users max", discount: "30%")
  ];
  List<ExpireCoupons> expirecouponlist=[
    ExpireCoupons(id: "1", title: "CHRISMIS", valid: "Valid till 25 december", max_users: "200 users max", discount: "25%"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Toolbar(title: "Coupon Code", cart_count: "0", show_cart: 'no'),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10,),
                ProfileSectionFields(
                    get_title: "Active", bg_color: "orange", show_arrow: "no"),
                ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: activecouponlist.length,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context,index)
                    {
                      return
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: CustomColors.grey)),
                          child: Column(children: [
                            Row(children: [
                              Expanded(child: Text(activecouponlist[index].title,style: CustomColors.font_14_medium_black,)),
                              Align(alignment: Alignment.centerRight, child: Text(activecouponlist[index].discount,style: CustomColors.font_14_medium_orange,),)
                            ],),
                            SizedBox(height: 5,),
                            Row(children: [
                              Image.asset(
                                'assets/images/cal.png',
                                height: 20,
                                width: 20,
                                fit: BoxFit.contain,
                              ),
                              Padding(padding: EdgeInsets.only(left: 5),
                                child:  Text(activecouponlist[index].valid,style: CustomColors.font_12_regular,),)
                            ],),
                            SizedBox(height: 5,),
                            Row(children: [
                              Image.asset(
                                'assets/images/users.png',
                                height: 20,
                                width: 20,
                                fit: BoxFit.contain,
                              ),
                              Padding(padding: EdgeInsets.only(left: 5),
                                child:  Text(activecouponlist[index].max_users,style: CustomColors.font_12_regular,),)
                            ],),
                          ],),
                        );

                    }
                ),
                SizedBox(height: 15,),
                ProfileSectionFields(
                    get_title: "Expire", bg_color: "orange", show_arrow: "no"),
                ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: expirecouponlist.length,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context,index)
                    {
                      return
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: CustomColors.grey)),
                          child: Column(children: [
                            Row(children: [
                              Expanded(child: Text(expirecouponlist[index].title,style: CustomColors.font_14_medium_black,)),
                              Align(alignment: Alignment.centerRight, child: Text(expirecouponlist[index].discount,style: CustomColors.font_14_medium_orange,),)
                            ],),
                            SizedBox(height: 5,),
                            Row(children: [
                              Image.asset(
                                'assets/images/cal.png',
                                height: 20,
                                width: 20,
                                fit: BoxFit.contain,
                              ),
                              Padding(padding: EdgeInsets.only(left: 5),
                                child:  Text(expirecouponlist[index].valid,style: CustomColors.font_12_regular,),)
                            ],),
                            SizedBox(height: 5,),
                            Row(children: [
                              Image.asset(
                                'assets/images/users.png',
                                height: 20,
                                width: 20,
                                fit: BoxFit.contain,
                              ),
                              Padding(padding: EdgeInsets.only(left: 5),
                                child:  Text(expirecouponlist[index].max_users,style: CustomColors.font_12_regular,),)
                            ],),
                          ],),
                        );

                    }
                ),
                SizedBox(height:50,),
                Align(alignment: Alignment.topRight, child: Container(
                  width: 180,
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                  decoration: BoxDecoration(
                    color: CustomColors.dark_orange,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Row(children: [
                    Padding(padding: EdgeInsets.only(right: 5),
                      child: Image.asset(
                        'assets/images/add.png',
                        height: 20,
                        width: 20,
                        fit: BoxFit.contain,
                        color: CustomColors.white,
                      ),),
                    Expanded(child:   Text("Add more coupon code",
                        style: CustomColors.font_10_regular_white))
                    ,
                  ],),),),



              ],
            ),
          ))
        ],
      ),
    );
  }
}
