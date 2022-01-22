import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:good/ChildClasses/TodayOrder.dart';
import 'package:good/Component/Toolbar.dart';

import 'CustomColors.dart';

void main() {
  runApp(OrderHistory());
}

class OrderHistory extends StatefulWidget {
  @override
  ChildMyCart createState() => ChildMyCart();
}

class ChildMyCart extends State<OrderHistory> {
  int list_index = -1;
  int tab_index = 1;

  List<String> list = ["1", "2", "3", "4", "5"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Toolbar(title: "Order History", cart_count: "0", show_cart: 'yes'),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 10),
            child:
            Row(
              children: [
                Expanded(
                  child:GestureDetector(
                    onTap: (){this.setState(() {
                      tab_index=1;
                    });},
                    child: Column(
                      children: [
                        Text(
                          "All",
                          style: CustomColors.home_title_text,
                          textAlign: TextAlign.center,
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            height: 4,
                            color:tab_index==1? CustomColors.dark_orange:CustomColors.light_orange
                        )
                      ],
                    ),
                  )
                  ,
                ),
                Expanded(
                  child:GestureDetector(onTap: (){this.setState(() {
                    tab_index=2;
                  });}, child: Column(
                    children: [
                      Text(
                        "Completed",
                        style: CustomColors.home_title_text,
                        textAlign: TextAlign.center,
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                          height: 4,
                          color:tab_index==2? CustomColors.dark_orange:CustomColors.light_orange)
                    ],
                  ),)
                  ,
                ),
                Expanded(
                  child:GestureDetector(onTap: (){this.setState(() {
                    tab_index=3;
                  });}, child:
                  Column(
                    children: [
                      Text(
                        "Canceled",
                        style: CustomColors.home_title_text,
                        textAlign: TextAlign.center,
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 10),
                          height: 4,
                          color:tab_index==3? CustomColors.dark_orange:CustomColors.light_orange)
                    ],
                  ) ,)
                  ,
                )
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: list.length,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {

                              if(list_index==index)
                                {
                                  this.setState(() {
                                    list_index = -1;
                                  });
                                }
                              else
                                {
                                  this.setState(() {
                                    list_index = index;
                                  });
                                }

                            },
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: 10, right: 10, top: 25),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 0),
                                    child: Image.asset(
                                      'assets/images/status_cancel.png',
                                      height: 35,
                                      width: 35,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 12),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Booking ID #123456",
                                            style: CustomColors.home_title_text,
                                            textAlign: TextAlign.left,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                  margin:
                                                      EdgeInsets.only(right: 5),
                                                  height: 4,
                                                  width: 4,
                                                  decoration: BoxDecoration(
                                                    color: CustomColors.black,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2),
                                                    // border: Border.all(color: Colors.blueAccent)
                                                  )),
                                              Expanded(
                                                  child: Text(
                                                "Pickup food pending",
                                                style: CustomColors
                                                    .order_list_field,
                                              ))
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: null,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 0),
                                      child: Image.asset(list_index==index? 'assets/images/up.png':'assets/images/n_down.png',
                                        height: 20,
                                        width: 20,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: list_index == index
                                ? Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        padding: EdgeInsets.only(
                                            left: 20, top: 15, bottom: 15),
                                        decoration: BoxDecoration(
                                            color: CustomColors.light_orange),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 10),
                                              child: Image.asset(
                                                  'assets/images/money.png',
                                                  height: 30,
                                                  width: 30,
                                                  fit: BoxFit.contain,
                                                  color: Colors.black),
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Pickup Time",
                                                  style: CustomColors
                                                      .order_list_field,
                                                ),
                                                Text(
                                                  "You have to pay \$50",
                                                  style: CustomColors
                                                      .order_list_field,
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 20, top: 15, bottom: 15),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 10),
                                              child: Image.asset(
                                                'assets/images/tick_orange.png',
                                                height: 25,
                                                width: 25,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Pickup Time Start",
                                                  style: CustomColors
                                                      .home_title_text,
                                                ),
                                                Text(
                                                  "Jan 22,2022 | 10:10 AM",
                                                  style: CustomColors
                                                      .order_list_field,
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 20, top: 0, bottom: 15),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 10),
                                              child: Image.asset(
                                                'assets/images/tick_grey.png',
                                                height: 25,
                                                width: 25,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Pickup Time End Time",
                                                  style: CustomColors
                                                      .home_title_text_grey,
                                                ),
                                                Text(
                                                  "Jan 22,2022 | 20:10 PM",
                                                  style: CustomColors
                                                      .order_list_field_grey,
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 52,
                                        ),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "View Summary",
                                            style: CustomColors.resent_otp_text,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 40, top: 15, right: 10),
                                        child: Row(
                                          children: [
                                            Expanded(
                                                child: GestureDetector(
                                              onTap: () {},
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                    right: 5,
                                                    bottom: 15,
                                                    left: 10),
                                                padding: EdgeInsets.only(
                                                    top: 12, bottom: 12),
                                                decoration: BoxDecoration(
                                                  color:
                                                      CustomColors.dark_orange,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: CustomColors.grey
                                                          .withOpacity(0.2),
                                                      spreadRadius: 2,
                                                      blurRadius: 7,
                                                      offset: Offset(2, 5),
                                                    ),
                                                  ],
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "View on Map",
                                                    style: CustomColors
                                                        .viewmap_text,
                                                  ),
                                                ),
                                              ),
                                            )),
                                            Expanded(
                                                child: GestureDetector(
                                              onTap: () {},
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                    left: 5,
                                                    bottom: 15,
                                                    right: 10),
                                                padding: EdgeInsets.only(
                                                    top: 12, bottom: 12),
                                                child: Center(
                                                  child: Text(
                                                    "Cancel your Pickup",
                                                    style: CustomColors
                                                        .cancelbooking_text,
                                                  ),
                                                ),
                                              ),
                                            )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                : null,
                          ),
                        ],
                      );
                    }),
                SizedBox(height: 35,)
              ],
            ),
          ))
        ],
      ),
    );
  }
}
