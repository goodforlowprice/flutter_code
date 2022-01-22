import 'package:flutter/material.dart';
import 'package:goodvendorapp/Component/Toolbar.dart';
import 'package:goodvendorapp/Design/CustomColors.dart';

void main() {
  runApp(OrderHistory());
}

class OrderHistory extends StatefulWidget {
  @override
  ChildMyCart createState() => ChildMyCart();
}

class ChildMyCart extends State<OrderHistory> {
  int tab_index = 1;
  List<String> list=["1","2","3","4","5"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Toolbar(title: "Orders", cart_count: "0", show_cart: 'no'),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(left: 10,right: 10),
                child:Column(children: [
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
                                style: CustomColors.font_14_medium_black,
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
                              "Active",
                              style: CustomColors.font_14_medium_black,
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
                              "Pending",
                              style: CustomColors.font_14_medium_black,
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
                  ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: list.length,
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: CustomColors.light_grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset:
                                  Offset(2, 5), // changes position of shadow
                                ),
                              ],
                              // border: Border.all(color: Colors.blueAccent)
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Order ID #12334",
                                            style: CustomColors.font_12_regular,
                                          ),
                                        )),
                                    Padding(
                                      padding: EdgeInsets.only(right: 0, top: 5),
                                      child: Text(
                                        "19 Jan 2022",
                                        style: CustomColors.font_10_regular_grey,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Payment Type : ",
                                        style: CustomColors.font_12_medium_black,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 5),
                                      child: Text(
                                        "Cash",
                                        style: CustomColors.font_12_regular,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Total Amount : ",
                                        style: CustomColors.font_12_medium_black,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 5),
                                      child: Text(
                                        "\$277.05",
                                        style: CustomColors.font_12_regular,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Product Item : ",
                                      style: CustomColors.font_12_medium_black,
                                    ),
                                    Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 5),
                                          child: Text(
                                            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                            style: CustomColors.font_12_regular,
                                          ),
                                        )),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(right: 5),
                                            child: Image.asset(
                                              'assets/images/verify.png',
                                              height: 15,
                                              width: 15,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Deliver Food",
                                              style:
                                              CustomColors.font_10_regular_grey,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 0, top: 5),
                                      child: Text(
                                        "Distance - 4km",
                                        style: CustomColors.font_10_regular_grey,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                CustomColors.login_page_divider_line,
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(right: 5),
                                            child: Image.asset(
                                              'assets/images/n_call.png',
                                              height: 15,
                                              width: 15,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "+91 98000-98000",
                                              style:
                                              CustomColors.font_10_regular_grey,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(right: 5),
                                            child: Image.asset(
                                              'assets/images/n_loc.png',
                                              height: 15,
                                              width: 15,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "871 street,new york",
                                              style:
                                              CustomColors.font_10_regular_grey,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                              ],
                            ),
                          );
                      }),
                ],)
                  ,),

              ],
            ),
          ))
        ],
      ),
    );
  }
}
