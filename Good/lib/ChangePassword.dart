import 'package:flutter/material.dart';
import 'package:good/ChildClasses/TodayOrder.dart';
import 'package:good/Component/Toolbar.dart';

import 'CustomColors.dart';

void main() {
  runApp(ChangePassword());
}

class ChangePassword extends StatefulWidget {
  @override
  ChildMyCart createState() => ChildMyCart();
}

class ChildMyCart extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Toolbar(
              title: "Create New Password", cart_count: "0", show_cart: 'no'),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                Center(
                  child: Image.asset(
                    'assets/images/security.png',
                    height: 140,
                    width: 140,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 40),
                  child: Center(
                    child: Text(
                      "Your new password must be different from previously used password",
                      textAlign: TextAlign.center,
                      style: CustomColors.toolbar_title_text,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Old Password",
                          style: CustomColors.forgot_password_text,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.only(left: 15,right: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: CustomColors.grey)),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '*****',
                                  hintStyle: CustomColors.edittext_loginpage_style,
                                ),
                              ),
                            ),
                            Image.asset(
                              'assets/images/eye.png',
                              height: 25,
                              width: 25,
                              fit: BoxFit.contain,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "New Password",
                          style: CustomColors.forgot_password_text,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.only(left: 15,right: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: CustomColors.grey)),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '*****',
                                  hintStyle: CustomColors.edittext_loginpage_style,
                                ),
                              ),
                            ),
                            Image.asset(
                              'assets/images/eye.png',
                              height: 25,
                              width: 25,
                              fit: BoxFit.contain,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Confirm Password",
                          style: CustomColors.forgot_password_text,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.only(left: 15,right: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: CustomColors.grey)),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '*****',
                                  hintStyle: CustomColors.edittext_loginpage_style,
                                ),
                              ),
                            ),
                            Image.asset(
                              'assets/images/eye.png',
                              height: 25,
                              width: 25,
                              fit: BoxFit.contain,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    padding: EdgeInsets.only(top: 3,left: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),

                    ),
                    child: MaterialButton(
                      minWidth: 180,
                      height:50,

                      onPressed: ()
                      {


                      },

                      color: CustomColors.dark_orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text("SAVE",style: CustomColors.sliderscreen_button_style),
                    ),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
