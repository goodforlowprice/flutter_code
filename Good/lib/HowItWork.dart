import 'package:flutter/material.dart';
import 'package:good/ChildClasses/TodayOrder.dart';
import 'package:good/Component/Toolbar.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'CustomColors.dart';

void main() {
  runApp(HowItWork());
}

class HowItWork extends StatefulWidget {
  @override
  ChildMyCart createState() => ChildMyCart();
}

class ChildMyCart extends State<HowItWork> {
  int slidervalue = 0;
  List<String> step_list_1 = [
    "Resiter Your Current Location",
    "All the available food item nearby will be listed automatically"
  ];
  List<String> step_list_2 = [
    "Add easily any item (e.g Restaurant Food, bakery Products, cafes, Grocery Items) in your Cart list.",
    "Confirm/Reject Orders",
    "Start Tracking for taking your order."
  ];
  List<String> step_list_3 = [
    "Pickup or Deliver your order simple & Convenient",
    "Benefits of Surplus Food for Low Price",
    "Local international Payment Mode",
    "Stop Food wastage"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Toolbar(title: "How it works?", cart_count: "0", show_cart: 'no'),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 5),
                Center(
                    child: Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Text(
                    "SAVE MONEY,SAVE OUR WORLD AND FIGHT AGAINST FOOD WASTE",
                    textAlign: TextAlign.center,
                    style: CustomColors.howitwork_title_text,
                  ),
                )),
                SizedBox(height: 10),
                Center(
                    child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Text(
                    "Get hug discounts on fresh food items that are nearing their expiry at resturent across globe.",
                    textAlign: TextAlign.center,
                    style: CustomColors.sliderscreen_subtitle_style,
                  ),
                )),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      slidervalue == 0 || slidervalue == 1 || slidervalue == 2
                          ? 'assets/images/step.png'
                          : 'assets/images/dot.png',
                      height: 30,
                      width: 30,
                      fit: BoxFit.contain,
                    ),
                    Container(
                        height: 2,
                        width: 90,
                        color: slidervalue == 0 ||
                                slidervalue == 1 ||
                                slidervalue == 2
                            ? CustomColors.dark_orange
                            : Colors.grey),
                    Image.asset(
                      slidervalue == 1 || slidervalue == 2
                          ? 'assets/images/step.png'
                          : 'assets/images/dot.png',
                      height: 30,
                      width: 30,
                      fit: BoxFit.contain,
                    ),
                    Container(
                        height: 2,
                        width: 90,
                        color: slidervalue == 2
                            ? CustomColors.dark_orange
                            : Colors.grey),
                    Image.asset(
                      slidervalue == 2
                          ? 'assets/images/step.png'
                          : 'assets/images/dot.png',
                      height: 30,
                      width: 30,
                      fit: BoxFit.contain,
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Step-1",
                      style: slidervalue == 0 ||
                              slidervalue == 1 ||
                              slidervalue == 2
                          ? CustomColors.list_title
                          : CustomColors.edittext_loginpage_style,
                    ),
                    Container(height: 2, width: 80, color: CustomColors.white),
                    Text(
                      "Step-2",
                      style: slidervalue == 1 || slidervalue == 2
                          ? CustomColors.list_title
                          : CustomColors.edittext_loginpage_style,
                    ),
                    Container(height: 2, width: 80, color: Colors.white),
                    Text(
                      "Step-3",
                      style: slidervalue == 2
                          ? CustomColors.list_title
                          : CustomColors.edittext_loginpage_style,
                    )
                  ],
                ),
                SizedBox(height: 20),
                ImageSlideshow(
                  width: double.infinity,
                  height: 240,
                  initialPage: slidervalue,
                  indicatorColor: CustomColors.dark_orange,
                  indicatorBackgroundColor: Colors.grey,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Image.asset(
                        'assets/images/work_1.png',
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
                    setState(() {
                      slidervalue = value;
                    });
                    print('Page changed: $value');
                  },
                  isLoop: false,
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount:slidervalue==0?2:slidervalue==1?3:slidervalue==2?4:null,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                color: CustomColors.green,
                                borderRadius: BorderRadius.circular(8),
                                // border: Border.all(color: Colors.blueAccent)
                              )),
                          Expanded(
                              child: Text(slidervalue==0?step_list_1[index]:slidervalue==1?step_list_2[index]:step_list_3[index],
                            style: CustomColors.green_text,
                          ))
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
