import 'package:flutter/material.dart';
import 'package:goodvendorapp/Design/CustomColors.dart';


double mainTab = 150;

class Toolbar extends StatefulWidget {
  String title;
  String cart_count;
  String show_cart;

  Toolbar(
      {required this.title, required this.cart_count, required this.show_cart});

  @override
  _childclass createState() => _childclass();
}

class _childclass extends State<Toolbar> {
  void backFunction() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          CustomColors.margin_on_top,
          Row(
            children: [
              GestureDetector(
                onTap: backFunction,
                child: Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Image.asset(
                    'assets/images/back.png',
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
                        child: Text(widget.title,
                            style: CustomColors.font_16_medium),
                      ),
                    ],
                  )),
              Padding(
                padding: EdgeInsets.only(right: 0),
                child: widget.show_cart == "yes"
                    ? Image.asset(
                        'assets/images/new_cart.png',
                        height: 25,
                        width: 25,
                        fit: BoxFit.contain,
                      )
                    : null,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
