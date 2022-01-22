import 'package:flutter/material.dart';
import 'package:goodvendorapp/Classes/Coupons.dart';
import 'package:goodvendorapp/Component/ProfileSectionFields.dart';
import 'package:goodvendorapp/Component/Toolbar.dart';
import 'package:goodvendorapp/Design/CustomColors.dart';
import 'package:goodvendorapp/Tabs/TabsPage.dart';

void main() {
  runApp(Form_3());
}

class Form_3 extends StatefulWidget {
  @override
  ChildMyCart createState() => ChildMyCart();
}

class ChildMyCart extends State<Form_3> {
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
                      'assets/images/fill.png',
                      height: 30,
                      width: 30,
                      fit: BoxFit.contain,
                    ),
                    Container(height: 2, width: 90, color: CustomColors.dark_orange),
                    Image.asset(
                      'assets/images/step.png',
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
                      style: CustomColors.font_12_medium_black,
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),

                GestureDetector(
                  onTap: (){ Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Coupons()),
                  );},
                  child: Container(
                    padding: EdgeInsets.only(top: 15,bottom: 15,left: 20,right: 10),
                    decoration: BoxDecoration(
                      color: CustomColors.light_orange,
                    ),
                    child: Row(children: [
                      Expanded(child: Text("Manage Sheeping",
                          style: CustomColors.font_14_regular)),
                      Expanded(child: Container(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                        decoration: BoxDecoration(
                          color: CustomColors.white,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Row(children: [
                          Padding(padding: EdgeInsets.only(right: 5),
                            child: Image.asset(
                              'assets/images/add.png',
                              height: 20,
                              width: 20,
                              fit: BoxFit.contain,
                              color: CustomColors.dark_orange,
                            ),),
                          Expanded(child:   Text("Add more coupon code",
                              style: CustomColors.font_10_regular_grey))
                          ,
                        ],),)),
                    ],),)
                  ,
                ),


                // ProfileSectionFields(
                //     get_title: "Manage Shipping",
                //     bg_color: "orange",
                //     show_arrow: "no"),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Promotion Code / voucher",
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
                      "Enter the code for the discount. For example: 20 percent",
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
                      "Price Discount",
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
                      "The discount will be applied according to the percentage",
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
                        hintText: '\$',
                        hintStyle: CustomColors.font_12_grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Maximum uses",
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
                      "How many users can use this coupon, Enter 10 means 10 users can use it",
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
                  height: 25,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Expiration Date",
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
                      "Select the expiration date for the discount",
                      style: CustomColors.font_12_regular,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 20, right: 10,top: 10),
                  padding: EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                      Border.all(color: CustomColors.light_grey)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "19 | Jan | 2022",
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
                ),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  TabsPage(selectedIndex: 0)),
                    );
                    },
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: EdgeInsets.only(left: 25,right: 25,top: 8,bottom: 8),
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: CustomColors.dark_orange,
                      ),
                      child: Text("DONE",style: CustomColors.font_14_regular_white,),
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
