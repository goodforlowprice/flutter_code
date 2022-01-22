import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:good/ChildClasses/TodayOrder.dart';
import 'package:good/Component/Toolbar.dart';
import 'package:good/Reviews.dart';
import 'package:good/model/resturentmenumodel.dart';
import 'package:good/model/reviewmodel.dart';

import 'CustomColors.dart';
import 'model/cartmodel.dart';

void main() {
  runApp(ResturentDetail());
}

class ResturentDetail extends StatefulWidget {
  @override
  ChildMyCart createState() => ChildMyCart();
}

class ChildMyCart extends State<ResturentDetail> {
  bool isSwitched = false;

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  List<reviewmodel> reviewlist = [
    reviewmodel(
        id: "1",
        userimage: "userimage",
        username: "Kelvin",
        rating: "4",
        date: "12 Jan"),
    reviewmodel(
        id: "2",
        userimage: "userimage",
        username: "Peterson",
        rating: "4",
        date: "11 Jan"),
  ];

  List<resturentmenumodel> menulist = [
    resturentmenumodel(id: '1', title: "All"),
    resturentmenumodel(id: '2', title: "Rating"),
    resturentmenumodel(id: '3', title: "Indian"),
    resturentmenumodel(id: '4', title: "Chinese"),
    resturentmenumodel(id: '5', title: "Italian"),
    resturentmenumodel(id: '6', title: "Beverage"),
  ];
  List<cartmodel> list = [
    cartmodel(
        id: "1",
        image: "assets/serverimages/bread.png",
        title: "Garlic Bread",
        stock: "600",
        selling_price: "\$15.76/-",
        actual_price: "\$17.76/-",
        qty: "1"),
    cartmodel(
        id: "2",
        image: "assets/serverimages/chilly.png",
        title: "Chilly Chicken",
        stock: "340",
        selling_price: "\$15.76/-",
        actual_price: "\$17.76/-",
        qty: "2"),
    cartmodel(
        id: "3",
        image: "assets/serverimages/roti.png",
        title: "Tava Roti",
        stock: "0",
        selling_price: "\$2.00/-",
        actual_price: "\$3.76/-",
        qty: "5"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Toolbar(title: "Resturent", cart_count: "0", show_cart: 'yes'),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25)),
                      child: Image.asset(
                        'assets/serverimages/resturent_bg.png',
                        height: 180,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 10, top: 160),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: CustomColors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(2, 5),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        "assets/serverimages/shop_4.png",
                        height: 60,
                        width: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 185, left: 135),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "R Place Resturent",
                            overflow: TextOverflow.visible,
                            style: CustomColors.list_title,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Image.asset(
                                  "assets/images/orange_loc.png",
                                  height: 15,
                                  width: 15,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Text("2km",
                                  style: CustomColors.cart_km_distance_text)
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              RatingBar.builder(
                                itemSize: 15,
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding: EdgeInsets.only(right: 2),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: CustomColors.dark_orange,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: 2, left: 20),
                                    child: Image.asset(
                                      "assets/images/orange_loc.png",
                                      height: 15,
                                      width: 15,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Text("9AM - 8PM",
                                      style: CustomColors.cart_km_distance_text)
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "About this place",
                      style: CustomColors.home_title_text,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 5, right: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Dummy text is text that is used in the publishing industry or by web designers to occupy the space which will later be filled with 'real' content. This is required when, for example, the final text is not yet available. Dummy text is also known as 'fill text'.",
                      style: CustomColors.already_account_text,
                    ),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Reviews",
                              style: CustomColors.home_title_text,
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(right: 0, top: 5),
                        child: GestureDetector(
                          onTap: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Reviews()),
                            );
                          },
                          child: Text(
                            "See reviews",
                            style: CustomColors.view_all_text,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: reviewlist.length,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: CustomColors.grey)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 0),
                            child: Image.asset(
                              'assets/serverimages/user.png',
                              height: 40,
                              width: 40,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      reviewlist[index].username,
                                      style: CustomColors.home_title_text,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    RatingBar.builder(
                                      itemSize: 12,
                                      initialRating: 4,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding: EdgeInsets.only(right: 2),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: CustomColors.dark_orange,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(7.0),
                                          child: Image.asset(
                                            'assets/serverimages/pizza.png',
                                            height: 35,
                                            width: 35,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 5, right: 5),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(7.0),
                                              child: Image.asset(
                                                'assets/serverimages/pizza.png',
                                                height: 35,
                                                width: 35,
                                                fit: BoxFit.contain,
                                              ),
                                            )),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(7.0),
                                          child: Image.asset(
                                            'assets/serverimages/pizza.png',
                                            height: 35,
                                            width: 35,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )),
                          Text(reviewlist[index].date,
                              style: CustomColors.cart_km_distance_text)
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 20, bottom: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Our Menu",
                      style: CustomColors.home_title_text,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: SizedBox(
                    height: 33,
                    child: ListView.builder(
                        itemCount: menulist.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 10, top: 2),
                            padding:
                                EdgeInsets.only(left: 20, right: 20, top: 6),
                            decoration: BoxDecoration(
                              color: CustomColors.light_grey,
                              borderRadius: BorderRadius.circular(8),
                              // border: Border.all(color: Colors.blueAccent)
                            ),
                            child: Text(
                              menulist[index].title,
                              style: CustomColors.sliderscreen_subtitle_style,
                            ),
                          );
                        }),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 12, bottom: 10),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Non-veg",
                          style: CustomColors.list_title,
                        ),
                      ),
                      Switch(
                        onChanged: toggleSwitch,
                        value: isSwitched,
                        activeColor: CustomColors.dark_orange,
                        activeTrackColor: CustomColors.light_grey,
                        inactiveThumbColor: CustomColors.dark_grey,
                        inactiveTrackColor: CustomColors.light_grey,
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: list.length,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(color: CustomColors.light_orange)),
                        margin:
                            EdgeInsets.only(bottom: 10, left: 10, right: 10),
                        padding: EdgeInsets.all(10),
                        child: Stack(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset(
                                      list[index].image,
                                      height: 70,
                                      width: 90,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      list[index].title,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomColors.list_title,
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      list[index].stock == "0"
                                          ? "Out of stock"
                                          : "Stock left : " + list[index].stock,
                                      overflow: TextOverflow.visible,
                                      style: list[index].stock == "0"
                                          ? CustomColors.outofstock_text
                                          : CustomColors.already_account_text,
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          list[index].selling_price,
                                          overflow: TextOverflow.visible,
                                          style:
                                              CustomColors.selling_price_text,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 5),
                                          child: Text(
                                            list[index].actual_price,
                                            overflow: TextOverflow.visible,
                                            style:
                                                CustomColors.actual_price_text,
                                          ),
                                        ),
                                        Expanded(
                                            child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            GestureDetector(
                                              // onTap: tmpFunction,
                                              child: Image.asset(
                                                'assets/images/minus.png',
                                                height: 20,
                                                width: 20,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 10, right: 10),
                                              child: Text(
                                                list[index].qty,
                                                style: CustomColors
                                                    .toolbar_title_text,
                                              ),
                                            ),
                                            GestureDetector(
                                              // onTap: tmpFunction,
                                              child: Image.asset(
                                                'assets/images/plus.png',
                                                height: 20,
                                                width: 20,
                                                fit: BoxFit.contain,
                                              ),
                                            )
                                          ],
                                        ))
                                      ],
                                    )
                                  ],
                                ))
                              ],
                            ),
                            Positioned(
                                top: 2,
                                left: 2,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: Image.asset(
                                    'assets/images/fav.png',
                                    height: 20,
                                    width: 20,
                                    fit: BoxFit.contain,
                                  ),
                                ))
                          ],
                        ),
                      );
                    }),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
