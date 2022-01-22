import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:goodvendorapp/Component/Toolbar.dart';
import 'package:goodvendorapp/Design/CustomColors.dart';

import 'SideMenu.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  ChildMyCart createState() => ChildMyCart();
}

class ChildMyCart extends State<Home> {
  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  void tmpFunction() {
    _scaffoldState.currentState?.openDrawer();
    print('Function Called.....');
  }
  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context)
  {

    return Scaffold(
      key: _scaffoldState,
      drawer: SideMenu(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 30),
            child: Row(
              children: [
                GestureDetector(
                  onTap: tmpFunction,
                  child: Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Image.asset(
                      'assets/images/menu.png',
                      height: 25,
                      width: 25,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Image.asset(
                            'assets/images/map.png',
                            height: 20,
                            width: 20,
                            fit: BoxFit.contain,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("New York 2145",
                              style: CustomColors.font_10_regular_grey),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0),
                          child: Image.asset(
                            'assets/images/downn.png',
                            height: 15,
                            width: 15,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    )),
                GestureDetector(
                  onTap: () {
                    openAlertBox();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 0),
                    child: Image.asset(
                      'assets/images/notification.png',
                      height: 25,
                      width: 25,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "This Month",
                                  style: CustomColors.font_14_medium_black,
                                ),
                              )),
                          Padding(
                            padding: EdgeInsets.only(right: 0, top: 5),
                            child: Text(
                              "See All Reports",
                              style: CustomColors.font_10_regular_orange,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                            margin: EdgeInsets.only(right: 10),
                            padding:
                                EdgeInsets.only(left: 10, top: 20, bottom: 20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      CustomColors.dark_orange.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(
                                      2, 5), // changes position of shadow
                                ),
                              ],
                              // border: Border.all(color: Colors.blueAccent)
                            ),
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Image.asset(
                                      'assets/images/wa.png',
                                      height: 40,
                                      width: 40,
                                      fit: BoxFit.contain,
                                    )),
                                SizedBox(
                                  height: 8,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Total Earning",
                                    style: CustomColors.font_12_medium_black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "\$200.00",
                                    style: CustomColors.font_14_medium_orange,
                                  ),
                                ),
                              ],
                            ),
                          )),
                          Expanded(
                              child: Container(
                            margin: EdgeInsets.only(left: 10),
                            padding:
                                EdgeInsets.only(left: 10, top: 20, bottom: 20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      CustomColors.dark_orange.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(
                                      2, 5), // changes position of shadow
                                ),
                              ],
                              // border: Border.all(color: Colors.blueAccent)
                            ),
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Image.asset(
                                      'assets/images/box_2.png',
                                      height: 40,
                                      width: 40,
                                      fit: BoxFit.contain,
                                    )),
                                SizedBox(
                                  height: 8,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Gross Sales",
                                    style: CustomColors.font_12_medium_black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "60%",
                                    style: CustomColors.font_14_medium_orange,
                                  ),
                                ),
                              ],
                            ),
                          )),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                            margin: EdgeInsets.only(right: 10),
                            padding:
                                EdgeInsets.only(left: 10, top: 20, bottom: 20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      CustomColors.dark_orange.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(
                                      2, 5), // changes position of shadow
                                ),
                              ],
                              // border: Border.all(color: Colors.blueAccent)
                            ),
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Image.asset(
                                      'assets/images/box_3.png',
                                      height: 40,
                                      width: 40,
                                      fit: BoxFit.contain,
                                    )),
                                SizedBox(
                                  height: 8,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Pending Orders",
                                    style: CustomColors.font_12_medium_black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "08",
                                    style: CustomColors.font_14_medium_orange,
                                  ),
                                ),
                              ],
                            ),
                          )),
                          Expanded(
                              child: Container(
                            margin: EdgeInsets.only(left: 10),
                            padding:
                                EdgeInsets.only(left: 10, top: 20, bottom: 20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      CustomColors.dark_orange.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(
                                      2, 5), // changes position of shadow
                                ),
                              ],
                              // border: Border.all(color: Colors.blueAccent)
                            ),
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Image.asset(
                                      'assets/images/box_4.png',
                                      height: 40,
                                      width: 40,
                                      fit: BoxFit.contain,
                                    )),
                                SizedBox(
                                  height: 8,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Complete Orders",
                                    style: CustomColors.font_12_medium_black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "95",
                                    style: CustomColors.font_14_medium_orange,
                                  ),
                                ),
                              ],
                            ),
                          )),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: CustomColors.dark_orange.withOpacity(0.2),
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
                            Expanded(
                                child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/bag.png',
                                  height: 25,
                                  width: 25,
                                  fit: BoxFit.contain,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10, right: 5),
                                  child: Text(
                                    "15",
                                    style: CustomColors.font_14_medium_orange,
                                  ),
                                ),
                                Text(
                                  "Active Orders",
                                  style: CustomColors.font_10_regular_grey,
                                ),
                              ],
                            )),
                            Image.asset(
                              'assets/images/down.png',
                              height: 15,
                              width: 15,
                              fit: BoxFit.contain,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
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
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 5),
                                    padding: EdgeInsets.only(top: 8, bottom: 8),
                                    decoration: BoxDecoration(
                                      color: CustomColors.light_orange,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Text(
                                      "Reject",
                                      textAlign: TextAlign.center,
                                      style: CustomColors.font_12_regular,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 5),
                                    padding: EdgeInsets.only(top: 8, bottom: 8),
                                    decoration: BoxDecoration(
                                      color: CustomColors.dark_orange,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Text(
                                      "Accept",
                                      textAlign: TextAlign.center,
                                      style: CustomColors.font_12_regular,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: CustomColors.light_grey,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text("See more active orders"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }

  openAlertBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(22.0))),
            contentPadding: EdgeInsets.only(top: 10.0),
            content: Container(
              width: 300.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(
                          'assets/images/cross.png',
                          height: 35,
                          width: 35,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/security.png',
                      height: 120,
                      width: 120,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Text(
                      "Your new pickup payment status successfully complete",
                      textAlign: TextAlign.center,
                      style: CustomColors.font_10_regular_grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                    child: Text("Payment \$85",
                        textAlign: TextAlign.center,
                        style: CustomColors.font_16_medium),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                    child: Text("GooglePay",
                        textAlign: TextAlign.center,
                        style: CustomColors.font_10_regular_grey),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10,bottom: 10),
                    padding: EdgeInsets.only(top: 10,bottom: 10),
                      decoration: BoxDecoration(
                        color: CustomColors.light_orange,
                      ),
                      child: Text("Feeback",
                          textAlign: TextAlign.center,
                          style: CustomColors.font_10_regular_grey)),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20,bottom: 10),
                    child: Text("Deliciouse yummy food",
                        textAlign: TextAlign.center,
                        style: CustomColors.font_10_regular_grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 0,right: 3),
                        child: Image.asset('assets/images/star_fill.png',height: 15,width: 15,fit: BoxFit.contain,),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 0,right: 3),
                        child: Image.asset('assets/images/star_fill.png',height: 15,width: 15,fit: BoxFit.contain,),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 0,right: 3),
                        child: Image.asset('assets/images/star_fill.png',height: 15,width: 15,fit: BoxFit.contain,),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 0,right: 3),
                        child: Image.asset('assets/images/star_fill.png',height: 15,width: 15,fit: BoxFit.contain,),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 0,right: 3),
                        child: Image.asset('assets/images/star_unfill.png',height: 15,width: 15,fit: BoxFit.contain,),
                      ),


                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.only(top: 3,left: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),

                      ),
                      child: MaterialButton(
                        minWidth: 140,
                        height:50,

                        onPressed: ()
                        {},

                        color: CustomColors.dark_orange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text("Check Status",style: CustomColors.font_14_regular_white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20,top: 10,bottom: 20),
                    child: Text("See Later",
                        textAlign: TextAlign.center,
                        style: CustomColors.font_10_regular_underline),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
