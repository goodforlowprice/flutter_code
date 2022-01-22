import 'package:flutter/material.dart';
import 'package:good/ChildClasses/TodayOrder.dart';
import 'package:good/Component/Toolbar.dart';

import 'CustomColors.dart';

void main() {
  runApp(EditAddress());
}

class EditAddress extends StatefulWidget {
  @override
  ChildMyCart createState() => ChildMyCart();
}

class ChildMyCart extends State<EditAddress> {
  String fullname = "Louis Anderson";
  String email = "louis@gmail.com";
  String phone = "90909090";
  String houseno = "Hno.150";
  String street = "Nagar 1st Block 1st Cross";
  String location = "194 Selby Road Libertyville, IL 60048";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Toolbar(title: "Edit Address", cart_count: "0", show_cart: 'no'),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Full name",
                          style: CustomColors.list_title,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        padding: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                            color: CustomColors.light_grey,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: CustomColors.light_grey)),
                        child: Expanded(
                          child: TextField(
                            onChanged: (text) => {
                              this.setState(() {
                                fullname = text;
                              })
                            },
                            controller: TextEditingController(text: fullname),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter your fulname',
                              hintStyle: CustomColors.unselect_button_style,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Email Address",
                          style: CustomColors.list_title,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        padding: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                            color: CustomColors.light_grey,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: CustomColors.light_grey)),
                        child: Expanded(
                          child: TextField(
                            onChanged: (text) => {
                              this.setState(() {
                                email = text;
                              })
                            },
                            controller: TextEditingController(text: email),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter your fulname',
                              hintStyle: CustomColors.unselect_button_style,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Phone",
                          style: CustomColors.list_title,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        padding: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                            color: CustomColors.light_grey,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: CustomColors.light_grey)),
                        child: Expanded(
                          child: TextField(
                            onChanged: (text) => {
                              this.setState(() {
                                phone = text;
                              })
                            },
                            controller: TextEditingController(text: phone),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter your fulname',
                              hintStyle: CustomColors.unselect_button_style,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Place/Flat/house no",
                          style: CustomColors.list_title,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        padding: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                            color: CustomColors.light_grey,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: CustomColors.light_grey)),
                        child: Expanded(
                          child: TextField(
                            onChanged: (text) => {
                              this.setState(() {
                                houseno = text;
                              })
                            },
                            controller: TextEditingController(text: houseno),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter your fulname',
                              hintStyle: CustomColors.unselect_button_style,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Street",
                          style: CustomColors.list_title,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        padding: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                            color: CustomColors.light_grey,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: CustomColors.light_grey)),
                        child: Expanded(
                          child: TextField(
                            onChanged: (text) => {
                              this.setState(() {
                                street = text;
                              })
                            },
                            controller: TextEditingController(text: street),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter your fulname',
                              hintStyle: CustomColors.unselect_button_style,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Location",
                          style: CustomColors.list_title,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        padding: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                            color: CustomColors.light_grey,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: CustomColors.light_grey)),
                        child: Expanded(
                          child: TextField(
                            onChanged: (text) => {
                              this.setState(() {
                                location = text;
                              })
                            },
                            controller: TextEditingController(text: location),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter your fulname',
                              hintStyle: CustomColors.unselect_button_style,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/check.png',
                            height: 25,
                            width: 25,
                            fit: BoxFit.contain,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text("Save Shipping Address",style: CustomColors.sliderscreen_subtitle_style,),
                          )
                        ],
                      ),
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
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
