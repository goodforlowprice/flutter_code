import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomColors {
  //colors//
  static const Color white = Color(0xfffffdfd);
  static const Color dark_orange = Color(0xFFee7e33);
  static const Color light_orange = Color(0xFFf9d3a7);
  static const Color green = Color(0xFF376f10);
  static const Color black = Color(0xFF1c1c1c);
  static const Color grey = Color(0xFFbababa);
  static const Color dark_grey = Color(0xFF64676d);
  static const Color light_grey = Color(0xffe5e6e8);

  //font size//
  static const double font_26 = 26;
  static const double font_24 = 24;
  static const double font_22 = 22;
  static const double font_20 = 20;
  static const double font_18 = 18;
  static const double font_16 = 16;
  static const double font_14 = 14;
  static const double font_12 = 12;
  static const double font_10 = 10;


  static const SizedBox margin_on_top = SizedBox(
    height: 40,
  );


  static const Divider login_page_divider_line = Divider(
      color: CustomColors.grey,
      height: 15,
      thickness: 1.5,
      indent: 15,
      endIndent: 15);

  //font_18  text
  static const TextStyle font_18_medium = TextStyle(
      color: CustomColors.black,
      fontSize: CustomColors.font_18,
      fontFamily: 'poppins_medium');

  //font_16  text
  static const TextStyle font_16_medium = TextStyle(
      color: CustomColors.black,
      fontSize: CustomColors.font_16,
      fontFamily: 'poppins_medium');

  static const TextStyle font_16_regular = TextStyle(
      color: CustomColors.black,
      fontSize: CustomColors.font_16,
      fontFamily: 'poppins_regular');

  //font_14 text
  static const TextStyle font_14_regular = TextStyle(
      color: CustomColors.black,
      fontSize: CustomColors.font_14,
      fontFamily: 'poppins_regular');
  static const TextStyle font_14_regular_white = TextStyle(
      color: CustomColors.white,
      fontSize: CustomColors.font_14,
      fontFamily: 'poppins_medium');
  static const TextStyle font_14_medium_black = TextStyle(
      fontSize: CustomColors.font_14,
      color: CustomColors.black,
      fontFamily: 'poppins_medium');
  static const TextStyle font_14_medium_orange = TextStyle(
      fontSize: CustomColors.font_14,
      color: CustomColors.dark_orange,
      fontFamily: 'poppins_medium');
  static const TextStyle font_14_medium_grey = TextStyle(
      fontSize: CustomColors.font_14,
      color: CustomColors.grey,
      fontFamily: 'poppins_medium');

  //font_12 text
  static const TextStyle font_12_grey = TextStyle(
      color: CustomColors.dark_grey,
      fontSize: CustomColors.font_12,
      fontFamily: 'poppins_regular');

  static const TextStyle font_12_regular = TextStyle(
      color: CustomColors.black,
      fontSize: CustomColors.font_12,
      fontFamily: 'poppins_regular');

  static const TextStyle font_12_medium_black = TextStyle(
      color: CustomColors.black,
      fontSize: CustomColors.font_12,
      fontFamily: 'poppins_medium');

  static const TextStyle font_12_medium_white = TextStyle(
      color: CustomColors.white,
      fontSize: CustomColors.font_12,
      fontFamily: 'poppins_medium');

  static const TextStyle font_12_medium_grey = TextStyle(
      color: CustomColors.grey,
      fontSize: CustomColors.font_12,
      fontFamily: 'poppins_medium');

  static const TextStyle font_12_medium_underline = TextStyle(
      color: CustomColors.grey,
      fontSize: CustomColors.font_12,
      decoration: TextDecoration.lineThrough,
      fontFamily: 'poppins_medium');

  static const TextStyle font_10_regular_underline = TextStyle(
      color: CustomColors.dark_grey,
      fontSize: CustomColors.font_10,
      decoration: TextDecoration.underline,
      fontFamily: 'poppins_regular');

  //font_10 text
  static const TextStyle font_10_regular_grey = TextStyle(
      color: CustomColors.dark_grey,
      fontSize: CustomColors.font_10,
      fontFamily: 'poppins_medium');
  static const TextStyle font_10_medium_orange = TextStyle(
      color: CustomColors.dark_orange,
      fontSize: CustomColors.font_10,
      fontFamily: 'poppins_medium');
  static const TextStyle font_10_regular_white = TextStyle(
      color: CustomColors.white,
      fontSize: CustomColors.font_10,
      fontFamily: 'poppins_medium');
  static const TextStyle font_10_regular_orange = TextStyle(
      color: CustomColors.dark_orange,
      fontSize: CustomColors.font_10,
      decoration: TextDecoration.underline,
      fontFamily: 'poppins_medium');


}
