import 'package:flutter/material.dart';
import 'package:good/Coupons.dart';
import 'package:good/model/sidemenumodel.dart';

import '../CustomColors.dart';
import '../Invite.dart';
import '../OrderHistory.dart';
import 'TabsPage.dart';

class SideMenu extends StatefulWidget {
  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  List<sidemenumodel> list = [
    sidemenumodel(title: "Home", image: "assets/images/s_1.png"),
    sidemenumodel(title: "Orders", image: "assets/images/s_2.png"),
    sidemenumodel(title: "Earnings", image: "assets/images/s_3.png"),
    sidemenumodel(title: "Coupons", image: "assets/images/s_4.png"),
    sidemenumodel(title: "Share Referral Code", image: "assets/images/s_5.png"),
  ];

  void tmpFunction() {
    _scaffoldState.currentState?.openEndDrawer();
    print('Function Called.....');
  }

  void click_handle(value) {
    if (value == "Home")
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TabsPage(
                  selectedIndex: 0,
                )),
      );
    else if (value == "Orders") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OrderHistory()),
      );
    } else if (value == "Share Referral Code") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Invite()),
      );
    }
    else if (value == "Coupons") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Coupons()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      key: _scaffoldState,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                decoration: BoxDecoration(
                  color: CustomColors.light_orange,
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
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
                                child: Image.asset(
                                  'assets/images/map.png',
                                  height: 20,
                                  width: 20,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text("New York 2145",
                                    style: CustomColors.home_location_text),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        click_handle(list[index].title);
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: 30, right: 15, top: 12, bottom: 12),
                            child: Image.asset(
                              list[index].image,
                              height: 25,
                              width: 25,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Align(
                              child: Text(
                            list[index].title,
                            style: CustomColors.sliderscreen_subtitle_style,
                          ))
                        ],
                      ),
                    );
                  }),
              MaterialButton(
                onPressed: () {
                  openAlertBox();
                },
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 15, right: 15, top: 12, bottom: 12),
                      child: Image.asset(
                        "assets/images/s_6.png",
                        height: 25,
                        width: 25,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Align(
                        child: Text(
                      "Logout",
                      style: CustomColors.sliderscreen_subtitle_style,
                    ))
                  ],
                ),
              ),
            ],
          )
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
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Confirmation",
                      style: CustomColors.total_payemnt_text,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Text(
                      "Are you sure you want to logout ?",
                      style: CustomColors.home_title_text,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child:
                                Text("No", style: CustomColors.home_title_text),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text("Yes",
                                style: CustomColors.home_title_text),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
