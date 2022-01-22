import 'package:flutter/material.dart';
import 'package:good/ChildClasses/TodayOrder.dart';
import 'package:good/Component/Toolbar.dart';
import 'package:good/model/paymentmethodsmodel.dart';

import 'Component/LogoutDialog.dart';
import 'Component/ProfileSectionFields.dart';
import 'CustomColors.dart';

void main() {
  runApp(Setting());
}

class Setting extends StatefulWidget {
  @override
  ChildMyCart createState() => ChildMyCart();
}

class ChildMyCart extends State<Setting> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Toolbar(
              title: "Settings",
              cart_count: "0",
              show_cart:'no'
          ),
          Expanded(child: SingleChildScrollView(child: Column(children: [
            ProfileSectionFields(
              get_title: "Edit Adrress",
              bg_color: 'white',
            ),
            ProfileSectionFields(
              get_title: "Saved Adrress",
              bg_color: 'white',
            ),
            ProfileSectionFields(
              get_title: "Payment Methods",
              bg_color: 'white',
            ),
            ProfileSectionFields(
              get_title: "Personalisation Settings",
              bg_color: 'white',
            ),
            ProfileSectionFields(
              get_title: "Help & FAQs",
              bg_color: 'white',
            ),
            MaterialButton(
              onPressed: ()
              {
                openAlertBox();
              },
              child: Container(
              decoration: BoxDecoration(
                color: CustomColors.white,
              ),
              child: Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 15,left: 5),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 0),
                                child: Text("Logout",
                                    style: CustomColors.sliderscreen_subtitle_style),
                              ),
                            ],
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Image.asset(
                          'assets/images/right.png',
                          height: 15,
                          width: 15,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  )),
            ),),

          ],),))
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
                  SizedBox(height: 20,),
                  Center(child:  Text("Confirmation",style: CustomColors.total_payemnt_text,),),
                  SizedBox(height: 5,),
                  Center(child:  Text("Are you sure you want to logout ?",style: CustomColors.home_title_text,),),

                  SizedBox(height: 30,),
                  Row(children: [
                    Expanded(child:Center(child: GestureDetector(onTap: (){Navigator.pop(context);}, child:Text("No",style: CustomColors.home_title_text) ,) ,),)
                    ,
                    Expanded(child:Center(child:GestureDetector(onTap: (){Navigator.pop(context);}, child: Text("Yes",style: CustomColors.home_title_text) ,) ,),)
                    ,
                  ],),
                  SizedBox(height: 35,),
                ],
              ),
            ),
          );
        });
  }

  }

