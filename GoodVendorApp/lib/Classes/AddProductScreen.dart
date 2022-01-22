import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:goodvendorapp/Component/ProfileSectionFields.dart';
import 'package:goodvendorapp/Component/Toolbar.dart';
import 'package:goodvendorapp/Design/CustomColors.dart';
import 'package:goodvendorapp/Models/ActiveCoupons.dart';
import 'package:goodvendorapp/Models/ExpireCoupons.dart';
import 'package:goodvendorapp/Models/Products.dart';

void main() {
  runApp(AddProductScreen());
}

class AddProductScreen extends StatefulWidget {
  @override
  ChildMyCart createState() => ChildMyCart();
}

class ChildMyCart extends State<AddProductScreen> {
  List<Products> list = [
    Products(
        id: "1",
        image: "assets/serverimages/bread.png",
        title: "Garlic Bread",
        stock: "600",
        selling_price: "\$15.76/-",
        actual_price: "\$17.76/-",
        qty: "1"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Toolbar(title: "", cart_count: "0", show_cart: 'no'),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Center(
                  child:  Image.asset('assets/images/sucesss.png',height: 230,width: 230,fit: BoxFit.contain,),
                ),
                SizedBox(height: 20,),
                Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 20),child: Text("Product Added Successfully",textAlign: TextAlign.center,style: CustomColors.font_16_medium,),)
                ,
               Padding(padding: EdgeInsets.only(left: 25,right: 25,top: 5),
               child:  Text("Add 4-5 more products so that your shop menu is more visible to the users.",textAlign: TextAlign.center,style: CustomColors.font_12_regular,),),
                SizedBox(height: 20,),
                ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: list.length,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return
                        Container(
                          margin: EdgeInsets.only(bottom: 10,left: 10,right: 10),
                          padding: EdgeInsets.only(top: 10, bottom: 10, left: 2),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    list[index].image,
                                    height: 70,
                                    width: 90,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        list[index].title,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomColors.font_12_regular,
                                      ),

                                      SizedBox(
                                        height: 3,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            list[index].selling_price,
                                            overflow: TextOverflow.visible,
                                            style: CustomColors.font_14_medium_black,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5),
                                            child: Text(
                                              list[index].actual_price,
                                              overflow: TextOverflow.visible,
                                              style: CustomColors.font_12_medium_underline,
                                            ),
                                          ),

                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Stock left : " + list[index].stock,
                                        overflow: TextOverflow.visible,
                                        style: CustomColors.font_10_medium_orange,
                                      )

                                    ],
                                  ))
                            ],
                          ),
                        );
                    }),
                SizedBox(
                  height: 25,
                ),
                Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 5),
                          padding: EdgeInsets.only(top: 11, bottom: 11),
                          decoration: BoxDecoration(
                            color: CustomColors.white,
                            borderRadius: BorderRadius.circular(4),
                            border:
                            Border.all(color: CustomColors.light_grey),
                          ),
                          child: Text(
                            "Add Another Product",
                            textAlign: TextAlign.center,
                            style: CustomColors.font_12_regular,
                          ),
                        ),
                      ),
                      Expanded(
                        child:
                        GestureDetector(
                          onTap: (){ Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  AddProductScreen()),
                          );},
                          child:  Container(
                            margin: EdgeInsets.only(left: 5),
                            padding: EdgeInsets.only(top: 11, bottom: 11),
                            decoration: BoxDecoration(
                              color: CustomColors.dark_orange,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              "Back to Shop",
                              textAlign: TextAlign.center,
                              style: CustomColors.font_12_medium_white,
                            ),
                          ),
                        ),

                      ),
                    ],
                  ),),
                SizedBox(
                  height: 25,
                ),

              ],
            ),
          ))
        ],
      ),
    );
  }
}
