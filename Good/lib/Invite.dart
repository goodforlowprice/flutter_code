import 'package:flutter/material.dart';
import 'package:good/ChildClasses/TodayOrder.dart';
import 'package:good/Component/Toolbar.dart';

import 'CustomColors.dart';

void main() {
  runApp(Invite());
}

class Invite extends StatefulWidget {
  @override
  ChildMyCart createState() => ChildMyCart();
}

class ChildMyCart extends State<Invite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Toolbar(
              title: "Share Referral Code", cart_count: "0", show_cart: 'no'),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                Center(
                  child: Image.asset(
                    'assets/images/share.png',
                    height: 200,
                    width: 300,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 35, right: 35, top: 30, bottom: 30),
                  child: Center(
                    child: Text(
                      "Share to your friend and you will get 30% off on any 5 items",
                      textAlign: TextAlign.center,
                      style: CustomColors.toolbar_title_text,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 35, right: 35, top: 0, bottom: 10),
                  child: Center(
                    child: Text(
                      "Share your code",
                      textAlign: TextAlign.center,
                      style: CustomColors.share_code_text,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.only(left: 15),
                    margin: EdgeInsets.only(left: 50, right: 50),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: CustomColors.grey)),
                    child: Row(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Good123",
                              textAlign: TextAlign.center,
                              style: CustomColors.toolbar_title_text,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 15, right: 15, top: 12, bottom: 12),
                          decoration: BoxDecoration(
                              color: CustomColors.dark_orange,
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Copy",
                            textAlign: TextAlign.center,
                            style: CustomColors.select_button_style,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 0,right: 10),
                      child: Image.asset('assets/images/facebook.png',height: 40,width: 40,fit: BoxFit.contain,),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 0,right: 10),
                      child: Image.asset('assets/images/instagram.png',height: 40,width: 40,fit: BoxFit.contain,),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 0,right: 10),
                      child: Image.asset('assets/images/linkedin.png',height: 40,width: 40,fit: BoxFit.contain,),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 0,right: 0),
                      child: Image.asset('assets/images/apple.png',height: 40,width: 40,fit: BoxFit.contain,),
                    ),
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
