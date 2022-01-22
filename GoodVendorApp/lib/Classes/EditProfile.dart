import 'package:flutter/material.dart';
import 'package:goodvendorapp/Component/Toolbar.dart';
import 'package:goodvendorapp/Design/CustomColors.dart';

void main() {
  runApp(EditProfile());
}

class EditProfile extends StatefulWidget {
  @override
  ChildMyCart createState() => ChildMyCart();
}

class ChildMyCart extends State<EditProfile> {
  String fullname = "";
  String email = "";
  String phone = "";
  String houseno = "";
  String street = "";
  String location = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Toolbar(title: "Edit Profile", cart_count: "0", show_cart: 'no'),
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
                      Center(child: Image.asset(
                        'assets/serverimages/user.png',
                        height: 100,
                        width: 100,
                        fit: BoxFit.contain,
                      ),),
                      SizedBox(height: 15,),
                      Center(child:Text("Change Photo")),
                      SizedBox(height: 25,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Full name",
                          style: CustomColors.font_14_regular,
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
                              hintStyle: CustomColors.font_14_regular,
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
                          style: CustomColors.font_14_regular,
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
                              hintText: 'Enter your emai',
                              hintStyle: CustomColors.font_14_regular,
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
                          style: CustomColors.font_14_regular,
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
                              hintText: 'Enter your phone number',
                              hintStyle: CustomColors.font_14_regular,
                            ),
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


                            },

                            color: CustomColors.dark_orange,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Text("UPDATE",style: CustomColors.font_14_regular_white),
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
