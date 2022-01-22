import 'package:flutter/material.dart';
import 'package:good/Login.dart';

import 'CustomColors.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

void main() {
  runApp(IntroSlider());
}

class IntroSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ChildClass());
  }
}

class ChildClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Column(
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 200,
                width: 200,
                fit: BoxFit.contain,
              )
            ],
          ),
        ),
            ImageSlideshow(
              width: double.infinity,
              height: 240,
              initialPage: 0,
              indicatorColor: CustomColors.dark_orange,
              indicatorBackgroundColor: Colors.grey,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Image.asset(
                    'assets/images/slider_1.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Image.asset(
                    'assets/images/work_2.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Image.asset(
                    'assets/images/work_3.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ],
              onPageChanged: (value) {

                print('Page changed: $value');
              },
              isLoop: false,
            ),
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Column(
            children: [
              Text("RESTURANTS | BAKERIES | CAFES | GROCERIES",
                  textAlign: TextAlign.center,
                  style: CustomColors.sliderscreen_title_style),
              SizedBox(
                height: 15,
              ),
              Text(
                "Use our App,Save our planet and contribute to fight against food waste",
                textAlign: TextAlign.center,
                style: CustomColors.sliderscreen_subtitle_style,
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Container(
            padding: EdgeInsets.only(top: 3, left: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: MaterialButton(
              minWidth: 180,
              height: 50,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              color: CustomColors.dark_orange,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child:
                  Text("NEXT", style: CustomColors.sliderscreen_button_style),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ])),
    );
  }
}
