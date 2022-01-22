import 'package:flutter/material.dart';
import 'package:good/Signup.dart';

import 'CustomColors.dart';

void main() {
  runApp(ForgotPassword());
}

class ForgotPassword extends StatefulWidget {
  @override
  ChildForgotPassword createState() => ChildForgotPassword();
}

class ChildForgotPassword extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 45),
            Container(
                margin: EdgeInsets.only(left: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/images/back.png',
                        height: 25,
                        width: 25,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                )),
            SizedBox(height: 40),
            Center(
              child: Image.asset(
                'assets/images/forgot.png',
                height: 120,
                width: 120,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 35),
            Padding(
                padding: EdgeInsets.only(left: 50, right: 50),
                child: Center(
                  child: Text(
                      "Please enter your email address to receive a verification code",textAlign: TextAlign.center,
                      style: CustomColors.forgot_detail),
                )),
            SizedBox(height: 40),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Image.asset(
                    'assets/images/email.png',
                    height: 20,
                    width: 20,
                    fit: BoxFit.contain,
                  ),
                ),
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                    hintStyle: CustomColors.edittext_loginpage_style,
                  ),
                ))
              ],
            ),
            CustomColors.login_page_divider_line,
            SizedBox(height: 20),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                padding: EdgeInsets.only(top: 3, left: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: MaterialButton(
                  minWidth: 180,
                  height: 50,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: CustomColors.dark_orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text("SEND",
                      style: CustomColors.sliderscreen_button_style),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
