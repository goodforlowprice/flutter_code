import 'package:flutter/material.dart';
import 'package:goodvendorapp/Design/CustomColors.dart';
import 'package:goodvendorapp/Tabs/TabsPage.dart';

import 'ForgotPassword.dart';
import 'Signup.dart';
void main() { runApp(Login()); }

class Login extends StatefulWidget
{
  @override
  ChildLogin createState() => ChildLogin();
}

class ChildLogin extends State<Login>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView
        (
        child: Column(
          children: [
            SizedBox(height: 40),
            Center(
              child:  Image.asset('assets/images/logo.png',height: 200,width: 200,fit: BoxFit.contain,),
            ),
            Center(
              child: Text("SIGN IN",style:CustomColors.font_18_medium),
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: Image.asset('assets/images/email.png',height: 20,width: 20,fit: BoxFit.contain,),
                ),
                Expanded(child: TextField (

                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Username',
                    hintStyle: CustomColors.font_14_medium_grey,
                  ),
                ))

              ],
            ),
            CustomColors.login_page_divider_line,

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: Image.asset('assets/images/password.png',height: 20,width: 20,fit: BoxFit.contain,),
                ),
                Expanded(child: TextField (
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                    hintStyle: CustomColors.font_14_medium_grey,
                  ),
                ))

              ],
            ),
            SizedBox(height: 10),

            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: const EdgeInsets.only(right: 15),
                child:  TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  ForgotPassword()),
                    );

                  },
                  child: Text("Password Forgot ?",style: CustomColors.font_12_regular),
                ),
              ),

            ),




            SizedBox(height: 40),
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

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  TabsPage(selectedIndex: 0)),
                    );
                  },

                  color: CustomColors.dark_orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("SIGN IN",style: CustomColors.font_14_regular_white),
                ),
              ),
            ),
            SizedBox(height: 40),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 0,right: 10),
                  child: Image.asset('assets/images/facebook.png',height: 30,width: 30,fit: BoxFit.contain,),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 0,right: 10),
                  child: Image.asset('assets/images/instagram.png',height: 30,width: 30,fit: BoxFit.contain,),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 0,right: 10),
                  child: Image.asset('assets/images/linkedin.png',height: 30,width: 30,fit: BoxFit.contain,),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 0,right: 0),
                  child: Image.asset('assets/images/apple.png',height: 30,width: 30,fit: BoxFit.contain,),
                ),
              ],
            ),


            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

              Padding(
                padding: EdgeInsets.only(left: 0,right: 0),
                child: Text("Already have an account ?",style: CustomColors.font_12_regular),
              ),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Signup()),
                  );

                },
                child: Text("Register",style:CustomColors.font_12_regular),
              ),


            ],)





          ],
        ),
      ),
    );
  }

}
