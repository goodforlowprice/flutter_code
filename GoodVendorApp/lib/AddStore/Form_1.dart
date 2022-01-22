import 'package:flutter/material.dart';
import 'package:goodvendorapp/Component/ProfileSectionFields.dart';
import 'package:goodvendorapp/Component/Toolbar.dart';
import 'package:goodvendorapp/Design/CustomColors.dart';

import 'Form_2.dart';


void main() {
  runApp(Form_1());
}

class Form_1 extends StatefulWidget {
  @override
  ChildMyCart createState() => ChildMyCart();
}

class ChildMyCart extends State<Form_1> {
  int slidervalue=0;
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
          Toolbar(title: "Register Store Detail", cart_count: "0", show_cart: 'no'),
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
                          slidervalue == 0 || slidervalue == 1 || slidervalue == 2
                              ? 'assets/images/step.png'
                              : 'assets/images/dot.png',
                          height: 30,
                          width: 30,
                          fit: BoxFit.contain,
                        ),
                        Container(
                            height: 2,
                            width: 90,
                            color: slidervalue == 0 ||
                                slidervalue == 1 ||
                                slidervalue == 2
                                ? CustomColors.dark_orange
                                : Colors.grey),
                        Image.asset(
                          slidervalue == 1 || slidervalue == 2
                              ? 'assets/images/step.png'
                              : 'assets/images/dot.png',
                          height: 30,
                          width: 30,
                          fit: BoxFit.contain,
                        ),
                        Container(
                            height: 2,
                            width: 90,
                            color: slidervalue == 2
                                ? CustomColors.dark_orange
                                : Colors.grey),
                        Image.asset(
                          slidervalue == 2
                              ? 'assets/images/step.png'
                              : 'assets/images/dot.png',
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
                        Text(
                          "Step-1",
                          style: slidervalue == 0 ||
                              slidervalue == 1 ||
                              slidervalue == 2
                              ? CustomColors.font_12_medium_black
                              : CustomColors.font_12_medium_grey,
                        ),
                        Container(height: 2, width: 80, color: CustomColors.white),
                        Text(
                          "Step-2",
                          style: slidervalue == 1 || slidervalue == 2
                              ? CustomColors.font_12_medium_black
                              : CustomColors.font_12_medium_grey,
                        ),
                        Container(height: 2, width: 80, color: Colors.white),
                        Text(
                          "Step-3",
                          style: slidervalue == 2
                              ? CustomColors.font_12_medium_black
                              : CustomColors.font_12_medium_grey,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ProfileSectionFields(
                        get_title: "Store Logo", bg_color: "orange", show_arrow: "no"),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Add your store logo here",
                          style: CustomColors.font_12_regular,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 20, top: 10),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: CustomColors.grey)),
                        child: Image.asset(
                          'assets/images/add.png',
                          height: 30,
                          width: 30,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ProfileSectionFields(
                        get_title: "Name Your Store", bg_color: "orange", show_arrow: "no"),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Add your store name here",
                          style: CustomColors.font_12_regular,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, left: 10, right: 10),
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
                            hintText: 'Add a title',
                            hintStyle: CustomColors.font_12_grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ProfileSectionFields(
                        get_title: "Store Description",
                        bg_color: "orange",
                        show_arrow: "no"),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Write your store description here, let your customers know about your brand and your products.",
                          style: CustomColors.font_12_regular,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, left: 10, right: 10),
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
                            hintText: 'Description',
                            hintStyle: CustomColors.font_12_grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ProfileSectionFields(
                        get_title: "Store Timing", bg_color: "orange", show_arrow: "no"),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                              "Open",
                              textAlign: TextAlign.center,
                              style: CustomColors.font_12_grey,
                            )),
                        Expanded(
                            child: Text("Close",
                                textAlign: TextAlign.center,
                                style: CustomColors.font_12_grey)),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child:
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 10),
                              padding: EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
                              decoration: BoxDecoration(
                                color: CustomColors.light_orange,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "07:00 AM",
                                    textAlign: TextAlign.center,
                                    style: CustomColors.font_12_grey,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Image.asset(
                                      'assets/images/downn.png',
                                      height: 15,
                                      width: 15,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 10, right: 20),
                              padding: EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
                              decoration: BoxDecoration(
                                color: CustomColors.light_orange,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "07:00 AM",
                                    textAlign: TextAlign.center,
                                    style: CustomColors.font_12_grey,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Image.asset(
                                      'assets/images/downn.png',
                                      height: 15,
                                      width: 15,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 12, bottom: 10),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "24 Hours Available",
                              style: CustomColors.font_12_regular,
                            ),
                          ),
                          Switch(
                            onChanged: toggleSwitch,
                            value: isSwitched,
                            activeColor: CustomColors.dark_orange,
                            activeTrackColor: CustomColors.light_grey,
                            inactiveThumbColor: CustomColors.dark_grey,
                            inactiveTrackColor: CustomColors.light_grey,
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){ Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Form_2()),
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
