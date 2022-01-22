import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:good/Component/PriceSection.dart';
import 'package:good/Component/ProfileSectionFields.dart';
import 'package:good/model/cartmodel.dart';

import '../CustomColors.dart';

double mainTab = 150;

class TodayOrder extends StatefulWidget {
  String title;

  TodayOrder({required this.title});

  @override
  _childclass createState() => _childclass();
}

class _childclass extends State<TodayOrder> {
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
        stock: "235",
        selling_price: "\$2.00/-",
        actual_price: "\$3.76/-",
        qty: "5"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10,left: 10,right: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: CustomColors.light_orange,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: CustomColors.light_orange)),
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right: 10),
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
                        Expanded(
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
                              height: 5,
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
                              height: 5,
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
                                        style:
                                            CustomColors.cart_km_distance_text)
                                  ],
                                ),
                              ],
                            )
                          ],
                        ))
                      ],
                    ),
                    Positioned(
                        top: 2,
                        right: 2,
                        child: Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Image.asset(
                            'assets/images/fav.png',
                            height: 25,
                            width: 25,
                            fit: BoxFit.contain,
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(padding: EdgeInsets.only(left: 10,right: 10),child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Your Order List",
                          style: CustomColors.home_title_text,
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.only(right: 0),
                    child: Image.asset(
                      'assets/images/down.png',
                      height: 15,
                      width: 15,
                      fit: BoxFit.contain,
                    ),
                  )
                ],
              ),),

              ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: list.length,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return
                      Container(
                      margin: EdgeInsets.only(bottom: 10,left: 10,right: 10),
                      padding: EdgeInsets.only(top: 10, bottom: 10, left: 2),
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
                                    "Stock left : " + list[index].stock,
                                    overflow: TextOverflow.visible,
                                    style: CustomColors.already_account_text,
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        list[index].selling_price,
                                        overflow: TextOverflow.visible,
                                        style: CustomColors.selling_price_text,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text(
                                          list[index].actual_price,
                                          overflow: TextOverflow.visible,
                                          style: CustomColors.actual_price_text,
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
                              right: 2,
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
              SizedBox(
                height: 10,
              ),
              Padding(padding: EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Order Receipt",
                  style: CustomColors.home_title_text,
                ),
              ),)
              ,
              PriceSection(
                  title: "Food & Beverage Subtotla",
                  price: "\$26.00/-",
                  type: "subtotal",
                  display: "text"),
              PriceSection(
                  title: "Delivery Fee",
                  price: "\$1.59/-",
                  type: "subtotal",
                  display: "text"),
              PriceSection(
                  title: "GST",
                  price: "\$1.42/-",
                  type: "subtotal",
                  display: "text"),
              PriceSection(
                  title: "Service Fee",
                  price: "\$0.98/-",
                  type: "subtotal",
                  display: "text"),
              PriceSection(
                  title: "Courier Tip",
                  price: "\$4.03/-",
                  type: "subtotal",
                  display: "text"),
              PriceSection(
                  title: "Total",
                  price: "\$34.93/-",
                  type: "total",
                  display: "text"),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 30,left: 10,right: 10),
                padding: EdgeInsets.only(left: 10),
                child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Type any instruction for food',
                        hintStyle: CustomColors.edittext_loginpage_style,
                        counter: Offstage()),
                    keyboardType: TextInputType.multiline,
                    maxLength: null,
                    maxLines: null,
                    style: CustomColors.otp_edittext),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: CustomColors.grey)),
              ),
              SizedBox(
                height: 15,
              ),
              PriceSection(
                  title: "Pickup Your Food",
                  price: "(Default)",
                  type: "subtotal",
                  display: "text"),
              PriceSection(
                  title: "Deliver Your Food",
                  price: "image",
                  type: "subtotal",
                  display: "image"),
              SizedBox(
                height: 12,
              ),
              Padding(padding: EdgeInsets.only(left: 10,right: 10),child:Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Text("Have a any promo code ?",
                        style: CustomColors.list_title),
                  ),
                  Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(color: CustomColors.grey)),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '',
                              hintStyle: CustomColors.edittext_loginpage_style,
                            ),
                          ),
                        ),
                      )),
                ],
              ) ,)
              ,
              SizedBox(
                height: 20,
              ),
              ProfileSectionFields(
                get_title: "Payment Mode : Pickup Time",
                bg_color: 'orange',
              ),
              SizedBox(
                height: 14,
              ),
              Padding(padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                children: [
                  Text(
                    "Total Payment",
                    style: CustomColors.total_payemnt_text,
                  ),
                  Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "\$62.77",
                          style: CustomColors.catch_it_text,
                        ),
                      )),
                ],
              ),)

              ,
              SizedBox(
                height: 20,
              ),
              Padding(padding: EdgeInsets.only(left: 10,right: 10),
              child:Row(
                children: [
                  Text(
                    "Pickup Location",
                    style: CustomColors.list_title,
                  ),
                  Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Image.asset(
                              'assets/images/location_new.png',
                              height: 35,
                              width: 35,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Expanded(
                              child: Text(
                                "Square Market 2145,Near New York City | 2km",
                                style: CustomColors.orange_text,
                              )),
                        ],
                      )),
                ],
              ) ,)
              ,
              SizedBox(
                height: 20,
              ),
              Padding(padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                children: [
                  Text(
                    "View Map",
                    style: CustomColors.change_text,
                  ),
                  Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          padding: EdgeInsets.only(top: 3, left: 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: MaterialButton(
                            minWidth: 160,
                            height: 50,
                            onPressed: () {},
                            color: CustomColors.dark_orange,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Text("PICKUP",
                                style: CustomColors.sliderscreen_button_style),
                          ),
                        ),
                      )),
                ],
              ),)
              ,
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
