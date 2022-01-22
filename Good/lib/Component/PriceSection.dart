import 'package:flutter/material.dart';

import '../CustomColors.dart';

double mainTab = 150;

class PriceSection extends StatefulWidget {
  String title;
  String price;
  String type;
  String display;

  PriceSection(
      {required this.title,
      required this.price,
      required this.type,
      required this.display});

  @override
  _childclass createState() => _childclass();
}

class _childclass extends State<PriceSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: widget.type == "total" ? 15 : 7,
        ),
        Padding(padding: EdgeInsets.only(left: 10,right: 10),
        child:   Row(
          children: [
            Text(
              widget.title,
              style: widget.type == "total"
                  ? CustomColors.selling_price_text
                  : CustomColors.otp_detail_text,
            ),
            Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                  child: widget.display == "text"
                      ? Text(
                    widget.price,
                    style: widget.type == "total"
                        ? CustomColors.selling_price_text
                        : CustomColors.otp_detail_text,
                  )
                      : Image.asset(
                    "assets/images/check.png",
                    height: 25,
                    width: 25,
                    fit: BoxFit.contain,
                  ),
                )),
          ],
        ),)

      ],
    );
  }
}
