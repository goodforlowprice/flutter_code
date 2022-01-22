import 'package:flutter/material.dart';
import 'package:goodvendorapp/Classes/Aboutus.dart';
import 'package:goodvendorapp/Classes/ChangePassword.dart';
import 'package:goodvendorapp/Classes/Notifications.dart';
import 'package:goodvendorapp/Classes/OrderHistory.dart';
import 'package:goodvendorapp/Classes/PrivacyPolicy.dart';
import 'package:goodvendorapp/Design/CustomColors.dart';

double mainTab = 150;

class ProfileSectionFields extends StatefulWidget {
  String get_title;
  String bg_color;
  String show_arrow;

  ProfileSectionFields(
      {required this.get_title,
      required this.bg_color,
      required this.show_arrow});

  @override
  _childclass createState() => _childclass();
}

class _childclass extends State<ProfileSectionFields> {
  void click_handle() {
    if (widget.get_title == "About us") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Aboutus()),
      );
    } else if (widget.get_title == "Password") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ChangePassword()),
      );
    } else if (widget.get_title == "Privacy Policy") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PrivacyPolicy()),
      );
    }
    else if (widget.get_title == "Notifications") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Notifications()),
      );
    }
    else if (widget.get_title == "Order History") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OrderHistory()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: click_handle,
      child: Container(
        decoration: BoxDecoration(
          color: widget.bg_color == "orange"
              ? CustomColors.light_orange
              : widget.bg_color == "grey"
                  ? CustomColors.light_grey
                  : CustomColors.white,
        ),
        child: Padding(
            padding: EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 10),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 0),
                          child: Text(widget.get_title,
                              style: CustomColors.font_14_regular),
                        ),
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.only(right: 0),
                  child: widget.show_arrow == "no"
                      ? null
                      : Image.asset(
                          'assets/images/right.png',
                          height: 15,
                          width: 15,
                          fit: BoxFit.contain,
                        ),
                ),
              ],
            )),
      ),
    );
  }

  openAlertBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            contentPadding: EdgeInsets.only(top: 10.0),
            content: Container(
              width: 300.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Rate",
                        style: TextStyle(fontSize: 24.0),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.star_border,
                            color: CustomColors.light_orange,
                            size: 30.0,
                          ),
                          Icon(
                            Icons.star_border,
                            color: CustomColors.light_orange,
                            size: 30.0,
                          ),
                          Icon(
                            Icons.star_border,
                            color: CustomColors.light_orange,
                            size: 30.0,
                          ),
                          Icon(
                            Icons.star_border,
                            color: CustomColors.light_orange,
                            size: 30.0,
                          ),
                          Icon(
                            Icons.star_border,
                            color: CustomColors.light_orange,
                            size: 30.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 4.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0, right: 30.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Add Review",
                        border: InputBorder.none,
                      ),
                      maxLines: 8,
                    ),
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                      decoration: BoxDecoration(
                        color: CustomColors.light_orange,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(32.0),
                            bottomRight: Radius.circular(32.0)),
                      ),
                      child: Text(
                        "Rate Product",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
