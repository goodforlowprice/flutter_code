import 'package:flutter/material.dart';

import '../CustomColors.dart';

class LogoutDialog extends StatefulWidget {
  @override
  _RoundedAlertBoxState createState() => _RoundedAlertBoxState();
}

class _RoundedAlertBoxState extends State<LogoutDialog> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: openAlertBox,
        color: CustomColors.light_orange,
        child: Text(
          "Open Alert Box",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  openAlertBox() {
    return
      showDialog(
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