import 'package:flutter/material.dart';
import 'package:good/Tabs/Home.dart';
import 'package:good/Tabs/TabsPage.dart';
import 'CustomColors.dart';

void main() {
  runApp(OTP());
}

class OTP extends StatefulWidget {
  @override
  ChildOTP createState() => ChildOTP();
}

class ChildOTP extends State<OTP> {
  get selectedIndex => 0;




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
          Center(
            child: Image.asset(
              'assets/images/logo.png',
              height: 200,
              width: 200,
              fit: BoxFit.contain,
            ),
          ),
          Center(
            child: Text("Enter your OTP",
                style: CustomColors.sliderscreen_title_style),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
              padding: EdgeInsets.only(left: 45, right: 45),
              child: Text(
                "For the security of your account, please enter the OTP",
                textAlign: TextAlign.center,
                style: CustomColors.otp_detail_text,
              )),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [


              Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: 45,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            bottom: -10,  // HERE THE IMPORTANT PART
                          ),
                          border: InputBorder.none, counter: Offstage()),
                      textAlign: TextAlign.center,
                        style: CustomColors.otp_edittext),
                    decoration: BoxDecoration(
                        border: Border.all(color: CustomColors.grey)),
                  )),
              Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: 45,
                    child: TextField(
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                              bottom: -10,  // HERE THE IMPORTANT PART
                            ),
                            border: InputBorder.none, counter: Offstage()),
                        textAlign: TextAlign.center,
                        style: CustomColors.otp_edittext),
                    decoration: BoxDecoration(
                        border: Border.all(color: CustomColors.grey)),
                  )),
              Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: 45,
                    child: TextField(
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                              bottom: -10,  // HERE THE IMPORTANT PART
                            ),
                            border: InputBorder.none, counter: Offstage()),
                        textAlign: TextAlign.center,
                        style: CustomColors.otp_edittext),
                    decoration: BoxDecoration(
                        border: Border.all(color: CustomColors.grey)),
                  )),
              Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: 45,
                    child: TextField(
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                              bottom: -10,  // HERE THE IMPORTANT PART
                            ),
                            border: InputBorder.none, counter: Offstage()),
                        textAlign: TextAlign.center,
                        style: CustomColors.otp_edittext),
                    decoration: BoxDecoration(
                        border: Border.all(color: CustomColors.grey)),
                  )),
            ],
          ),
          SizedBox(height: 60),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child:
            Container(
              padding: EdgeInsets.only(top: 3, left: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: MaterialButton(
                minWidth: 180,
                height: 50,
                onPressed: () {
                 
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  TabsPage(selectedIndex: 0,)),
                  );
                },
                color: CustomColors.dark_orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text("VERIFY",
                    style: CustomColors.sliderscreen_button_style),
              ),
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: Text("Resent OTP", style: CustomColors.resent_otp_text),
          ),
        ],
      ),
    ));
  }
}
