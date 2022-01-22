import 'package:flutter/material.dart';
import 'package:good/Component/ProfileSectionFields.dart';
import 'package:good/EditProfile.dart';

import '../CustomColors.dart';
import '../MyCart.dart';
import 'SideMenu.dart';

class Profile extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Profile> {
  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  void tmpFunction() {
    _scaffoldState.currentState?.openDrawer();
    print('Function Called.....');
  }
  void cartFunction(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  MyCart()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: SideMenu(),
        key: _scaffoldState,
        body:
        Column(
          children: [
            CustomColors.margin_on_top,
            Padding(padding: EdgeInsets.only(left: 10,right: 10),
                child:  Row(
                  children: [
                    GestureDetector(
                      onTap: tmpFunction,
                      child: Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: Image.asset(
                          'assets/images/menu.png',
                          height: 25,
                          width: 25,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Text("Profile",
                                  style: CustomColors.toolbar_title_text),
                            ),
                          ],
                        )),
                    GestureDetector(
                      onTap: cartFunction,
                      child:   Padding(
                        padding: EdgeInsets.only(right: 0),
                        child: Image.asset(
                          'assets/images/new_cart.png',
                          height: 25,
                          width: 25,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ) ),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfile()),
                );
              },
              child:   Padding(padding: EdgeInsets.only(left: 10,right: 10),
                  child:  Row(
                    children: [
                      GestureDetector(
                        onTap: tmpFunction,
                        child: Padding(
                          padding: EdgeInsets.only(left: 0),
                          child: Image.asset(
                            'assets/serverimages/user.png',
                            height: 55,
                            width: 55,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text("John Smith",
                                    style: CustomColors.list_title),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text("Johnsmith125@gmail.com",
                                    style: CustomColors.km_distance_text),
                              ),
                            ],
                          )),
                      Padding(
                        padding: EdgeInsets.only(right: 0),
                        child: Image.asset(
                          'assets/images/right.png',
                          height: 15,
                          width: 15,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ) ),
            ),

            Expanded(child:
            SingleChildScrollView(
                child: Column(children: [

                  SizedBox(
                    height: 20,
                  ),
                  ProfileSectionFields(
                    get_title: "How its work?",
                    bg_color: 'orange',
                  ),
                  ProfileSectionFields(
                    get_title: "About us",
                    bg_color: 'white',
                  ),
                  ProfileSectionFields(
                    get_title: "Order History",
                    bg_color: 'white',
                  ),
                  ProfileSectionFields(
                    get_title: "Feedback",
                    bg_color: 'white',
                  ),
                  ProfileSectionFields(
                    get_title: "General",
                    bg_color: 'grey',
                  ),
                  ProfileSectionFields(
                    get_title: "Settings",
                    bg_color: 'white',
                  ),
                  ProfileSectionFields(
                    get_title: "Notifications",
                    bg_color: 'white',
                  ),
                  ProfileSectionFields(
                    get_title: "User Information",
                    bg_color: 'grey',
                  ),
                  ProfileSectionFields(
                    get_title: "Password",
                    bg_color: 'white',
                  ),
                  ProfileSectionFields(
                    get_title: "Privacy Policy",
                    bg_color: 'white',
                  ),
                  ProfileSectionFields(
                    get_title: "Share",
                    bg_color: 'white',
                  )
                ],)
            )
            )
            ,




          ],
        ));
  }
}
