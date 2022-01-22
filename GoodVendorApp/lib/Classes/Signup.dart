import 'package:flutter/material.dart';
import 'package:goodvendorapp/AddStore/Form_1.dart';
import 'package:goodvendorapp/Design/CustomColors.dart';

void main() { runApp(Signup()); }

class Signup extends StatefulWidget
{
  @override
  ChildSignup createState() => ChildSignup();
}

class ChildSignup extends State<Signup>
{
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView
      (
      child: Column(
        children: [
          SizedBox(height: 45),
          Container(
              margin: EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child:Material(
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child:  Image.asset('assets/images/back.png',height: 25,width: 25,fit: BoxFit.contain,),
                  ),
                ),
              )


          ),
          Center(
            child:  Image.asset('assets/images/logo.png',height: 170,width: 200,fit: BoxFit.contain,),
          ),
          Center(
            child: Text("SIGN UP",style: CustomColors.font_18_medium),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Image.asset('assets/images/user.png',height: 20,width: 20,fit: BoxFit.contain,),
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
                child: Image.asset('assets/images/email.png',height: 20,width: 20,fit: BoxFit.contain,),
              ),
              Expanded(child: TextField (

                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Email',
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
                child: Image.asset('assets/images/call.png',height: 20,width: 20,fit: BoxFit.contain,),
              ),
              Expanded(child: TextField (

                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Mobile Number',
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
          SizedBox(height: 20),

          SizedBox(height: 20),
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
                    MaterialPageRoute(builder: (context) =>  Form_1()),
                  );
                },
                  color: CustomColors.dark_orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Text("SIGN UP",style:CustomColors.font_14_regular_white),
              ),
            ),
          ),
          SizedBox(height: 30),



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

          ],),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

            Padding(
              padding: EdgeInsets.only(left: 0,right: 0),
              child: Text("Already have an account ?",style: CustomColors.font_12_regular),
            ),

            Padding(
              padding: EdgeInsets.only(left: 0,right: 15),
              child: Text(" Sign in",style:CustomColors.font_12_regular),
            ),

          ],)





        ],
      ),
    ),
  );
}
}

