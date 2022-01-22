import 'package:flutter/material.dart';
import 'package:goodvendorapp/Component/ProfileSectionFields.dart';
import 'package:goodvendorapp/Component/Toolbar.dart';
import 'package:goodvendorapp/Design/CustomColors.dart';

import 'Form_3.dart';

void main() {
  runApp(Form_2());
}

class Form_2 extends StatefulWidget {
  @override
  ChildMyCart createState() => ChildMyCart();
}

class ChildMyCart extends State<Form_2> {
  int slidervalue = 0;
  String storename = "";
  bool isSwitched = false;

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Toolbar(
              title: "Register Store Detail", cart_count: "0", show_cart: 'no'),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/fill.png',
                      height: 30,
                      width: 30,
                      fit: BoxFit.contain,
                    ),
                    Container(
                        height: 2, width: 90, color: CustomColors.dark_orange),
                    Image.asset(
                      'assets/images/step.png',
                      height: 30,
                      width: 30,
                      fit: BoxFit.contain,
                    ),
                    Container(height: 2, width: 90, color: Colors.grey),
                    Image.asset(
                      'assets/images/dot.png',
                      height: 30,
                      width: 30,
                      fit: BoxFit.contain,
                    )
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Step-1", style: CustomColors.font_12_medium_black),
                    Container(height: 2, width: 80, color: CustomColors.white),
                    Text("Step-2", style: CustomColors.font_12_medium_black),
                    Container(height: 2, width: 80, color: Colors.white),
                    Text(
                      "Step-3",
                      style: CustomColors.font_12_medium_grey,
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                ProfileSectionFields(
                    get_title: "Manage Shipping",
                    bg_color: "orange",
                    show_arrow: "no"),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Configure shipping charge to be calculate during checkout.",
                      style: CustomColors.font_12_regular,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Flat Base Price",
                      style: CustomColors.font_14_medium_black,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Let you change a fixed based price for shipping.",
                      style: CustomColors.font_12_regular,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                  padding: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: CustomColors.light_grey)),
                  child: Expanded(
                    child: TextField(
                      onChanged: (text) => {
                        this.setState(() {
                          storename = text;
                        })
                      },
                      controller: TextEditingController(text: storename),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '',
                        hintStyle: CustomColors.font_12_grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Shipping fee per km/mile",
                      style: CustomColors.font_14_medium_black,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "If you set 0 here and flat base price 0 it means user is eligible for free shipping.",
                      style: CustomColors.font_12_regular,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                  padding: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: CustomColors.light_grey)),
                  child: Expanded(
                    child: TextField(
                      onChanged: (text) => {
                        this.setState(() {
                          storename = text;
                        })
                      },
                      controller: TextEditingController(text: storename),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '',
                        hintStyle: CustomColors.font_12_grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      flex:1,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Delivery Food Process",
                            style: CustomColors.font_14_medium_black,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Switch(
                        onChanged: toggleSwitch,
                        value: isSwitched,
                        activeColor: CustomColors.dark_orange,
                        activeTrackColor: CustomColors.light_grey,
                        inactiveThumbColor: CustomColors.dark_grey,
                        inactiveTrackColor: CustomColors.light_grey,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){ Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Form_3()),
                  );},
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: EdgeInsets.only(left: 25,right: 25,top: 8,bottom: 8),
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: CustomColors.dark_orange,
                      ),
                      child: Text("Next",style: CustomColors.font_14_regular_white,),
                    ),
                  ),
                ),

                SizedBox(
                  height: 25,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
