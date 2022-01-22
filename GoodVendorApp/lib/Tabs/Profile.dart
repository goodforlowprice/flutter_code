import 'package:flutter/material.dart';
import 'package:goodvendorapp/Classes/EditProfile.dart';
import 'package:goodvendorapp/Component/ProfileSectionFields.dart';
import 'package:goodvendorapp/Design/CustomColors.dart';
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
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) =>  MyCart()),
    // );
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
                                  style: CustomColors.font_16_regular),
                            ),
                          ],
                        )),
                    GestureDetector(
                      onTap: cartFunction,
                      child:   Padding(
                        padding: EdgeInsets.only(right: 0),
                        child: Image.asset(
                          'assets/images/notification.png',
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
                                    style: CustomColors.font_14_regular),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text("Johnsmith125@gmail.com",
                                    style: CustomColors.font_12_grey),
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
                    get_title: "About us",
                    bg_color: 'white',
                    show_arrow: "yes",
                  ),
                  ProfileSectionFields(
                    get_title: "Order History",
                    bg_color: 'white',
                    show_arrow: "yes",
                  ),
                  ProfileSectionFields(
                    get_title: "Feedback",
                    bg_color: 'white',
                    show_arrow: "yes",
                  ),
                  ProfileSectionFields(
                    get_title: "General",
                    bg_color: 'grey',
                    show_arrow: "no",
                  ),

                  ProfileSectionFields(
                    get_title: "Notifications",
                    bg_color: 'white',
                    show_arrow: "yes",
                  ),
                  ProfileSectionFields(
                    get_title: "User Information",
                    bg_color: 'grey',
                    show_arrow: "no",
                  ),
                  ProfileSectionFields(
                    get_title: "Password",
                    bg_color: 'white',
                    show_arrow: "yes",
                  ),
                  ProfileSectionFields(
                    get_title: "Privacy Policy",
                    bg_color: 'white',
                    show_arrow: "yes",
                  ),

                ],)
            )
            )
            ,




          ],
        ));
  }
}
