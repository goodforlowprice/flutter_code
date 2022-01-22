import 'package:flutter/material.dart';
import 'package:good/Aboutus.dart';
import 'package:good/Component/LogoutDialog.dart';
import 'package:good/EditAddress.dart';
import 'package:good/Faq.dart';
import 'package:good/Invite.dart';
import 'package:good/Notifications.dart';
import 'package:good/OrderHistory.dart';
import 'package:good/PaymentMethods.dart';
import 'package:good/PrivacyPolicy.dart';
import 'package:good/SavedAddress.dart';

import '../ChangePassword.dart';
import '../CustomColors.dart';
import '../HowItWork.dart';
import '../Setting.dart';

double mainTab = 150;

class ProfileSectionFields extends StatefulWidget {
  String get_title;
  String bg_color;

  ProfileSectionFields({required this.get_title, required this.bg_color});

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
    } else if (widget.get_title == "Share") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Invite()),
      );
    } else if (widget.get_title == "Privacy Policy") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PrivacyPolicy()),
      );
    } else if (widget.get_title == "How its work?") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HowItWork()),
      );
    } else if (widget.get_title == "Settings") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Setting()),
      );
    }
    else if (widget.get_title == "Payment Methods") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PaymentMethods()),
      );
    }
    else if (widget.get_title == "Saved Adrress") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SavedAddress()),
      );
    }
    else if (widget.get_title == "Edit Adrress") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => EditAddress()),
      );
    }
    else if (widget.get_title == "Order History") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OrderHistory()),
      );
    }
    else if (widget.get_title == "Help & FAQs") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Faq()),
      );
    }
    else if (widget.get_title == "logout") {
      openAlertBox();
    }
    else if (widget.get_title == "Notifications") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Notifications()),
      );
    }

  }

  @override
  Widget build(BuildContext context) {
    return

      GestureDetector(
      onTap: click_handle,
      child:
      Container(
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
                              style: CustomColors.sliderscreen_subtitle_style),
                        ),
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.only(right: 0),
                  child: widget.bg_color == "grey"
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



