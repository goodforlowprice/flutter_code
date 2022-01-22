import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:good/model/discovermodel.dart';
import 'package:good/model/fav_resturents_model.dart';

import '../CustomColors.dart';
import '../MyCart.dart';
import '../ResturentDetail.dart';
import 'SideMenu.dart';

class Wishlist extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Wishlist> {
  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  List<fav_resturents_model> resturents_list = [
    fav_resturents_model(
        id: "1",
        fav_status: "false",
        image: "image",
        title: "title",
        distance: "2km",
        rating: 4.0,
        timing: "06:00-06:00"),
    fav_resturents_model(
        id: "1",
        fav_status: "false",
        image: "image",
        title: "title",
        distance: "2km",
        rating: 4.0,
        timing: "06:00-06:00"),

  ];
  List<discovermodel> discoverlist = [
    discovermodel(
        id: "1",
        fav_status: "false",
        image: "assets/serverimages/new_burger.png",
        title: "Cheese Burger",
        distance: "2.5km",
        rating: 4.0,
        stock_left: "65"),
    discovermodel(
        id: "2",
        fav_status: "false",
        image: "assets/serverimages/new_basket.png",
        title: "grocery",
        distance: "4.5km",
        rating: 4.0,
        stock_left: "45"),
    discovermodel(
        id: "3",
        fav_status: "false",
        image: "assets/serverimages/new_coffee.png",
        title: "Coffee",
        distance: "3.0km",
        rating: 4.0,
        stock_left: "34"),
    discovermodel(
        id: "1",
        fav_status: "false",
        image: "assets/serverimages/new_burger.png",
        title: "Cheese Burger",
        distance: "2.5km",
        rating: 4.0,
        stock_left: "65"),
    discovermodel(
        id: "2",
        fav_status: "false",
        image: "assets/serverimages/new_basket.png",
        title: "grocery",
        distance: "4.5km",
        rating: 4.0,
        stock_left: "45"),
    discovermodel(
        id: "3",
        fav_status: "false",
        image: "assets/serverimages/new_coffee.png",
        title: "Coffee",
        distance: "3.0km",
        rating: 4.0,
        stock_left: "34")
  ];
  void tmpFunction() {
    _scaffoldState.currentState?.openDrawer();
    print('Function Called.....');
  }
  void cartFunction(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  MyCart()),
    );
  }
  void openRestruentFunction()
  {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  ResturentDetail()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      drawer: SideMenu(),
      body: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
            CustomColors.margin_on_top,
            Row(
              children: [
                GestureDetector(
                  onTap: tmpFunction,
                  child: Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Image.asset(
                      'assets/images/menu.png',
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
                          child: Text("Wishlist",
                              style: CustomColors.toolbar_title_text),
                        ),
                      ],
                    )),
                GestureDetector(
                  onTap: cartFunction,
                  child:   Padding(
                    padding: EdgeInsets.only(right: 0),
                    child: Image.asset(
                      'assets/images/new_cart.png',
                      height: 25,
                      width: 25,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),

            Expanded(child: SingleChildScrollView(child: Column(children: [
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child:
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Resturents Place",
                              style: CustomColors.home_title_text,
                            ),
                          )
                        ],
                      )),
                  Padding(
                    padding: EdgeInsets.only(right: 0, top: 5),
                    child: Text(
                      "View more",
                      style: CustomColors.view_all_text,
                    ),
                  )
                ],
              ),
              ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: resturents_list.length,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index)
                  {
                    return
                      GestureDetector(
                        onTap: openRestruentFunction,
                        child:  Expanded(
                            child: SingleChildScrollView(
                              child:
                              Container(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 0,
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border:
                                          Border.all(color: CustomColors.light_orange)),
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
                                                      color:
                                                      CustomColors.grey.withOpacity(0.2),
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
                                              Expanded(child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "R Place Resturent",overflow: TextOverflow.visible,
                                                    style: CustomColors.list_title,
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
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
                                                          style:
                                                          CustomColors.km_distance_text)
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
                                                        itemPadding:
                                                        EdgeInsets.only(right: 2),
                                                        itemBuilder: (context, _) => Icon(
                                                          Icons.star,
                                                          color: CustomColors.dark_orange,
                                                        ),
                                                        onRatingUpdate: (rating) {
                                                          print(rating);
                                                        },
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                        children: [
                                                          Padding(
                                                            padding: EdgeInsets.only(
                                                                right: 2, left: 20),
                                                            child: Image.asset(
                                                              "assets/images/orange_loc.png",
                                                              height: 15,
                                                              width: 15,
                                                              fit: BoxFit.contain,
                                                            ),
                                                          ),
                                                          Text("9AM - 8PM",
                                                              style: CustomColors
                                                                  .km_distance_text)
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
                                                  'assets/images/un_fav.png',
                                                  height: 25,
                                                  width: 25,
                                                  fit: BoxFit.contain,
                                                ),
                                              ))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )),
                      );

                  }
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Foods",
                              style: CustomColors.home_title_text,
                            ),
                          )
                        ],
                      )),
                  Padding(
                    padding: EdgeInsets.only(right: 0, top: 5),
                    child: Text(
                      "View more",
                      style: CustomColors.view_all_text,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 215,
                child:
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: discoverlist.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return
                      GestureDetector(onTap: openRestruentFunction,
                      child: Container(
                        margin: EdgeInsets.only(
                            top: 10, right: 10, left: 5, bottom: 10),
                        alignment: Alignment.topLeft,
                        child: Container(
                            width: 140,
                            margin: const EdgeInsets.only(),
                            padding: const EdgeInsets.only(),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: CustomColors.dark_orange
                                      .withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(
                                      2, 5), // changes position of shadow
                                ),
                              ],
                              // border: Border.all(color: Colors.blueAccent)
                            ),
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      padding:
                                      const EdgeInsets.only(top: 10),
                                      child: Image.asset(
                                        discoverlist[index].image,
                                        height: 90,
                                        width: 90,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 5, bottom: 5),
                                      child: Column(
                                        children: [
                                          Center(
                                              child: Text(
                                                discoverlist[index].title,
                                                style: CustomColors.list_title,
                                              )),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 3, bottom: 3),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 5),
                                                  child: Image.asset(
                                                    "assets/images/orange_loc.png",
                                                    height: 15,
                                                    width: 15,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                                Align(
                                                    child: Text(
                                                        discoverlist[index]
                                                            .distance,
                                                        style: CustomColors
                                                            .km_distance_text))
                                              ],
                                            ),
                                          ),
                                          RatingBar.builder(
                                            itemSize: 15,
                                            initialRating: 2,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.only(
                                                right: 2, bottom: 3),
                                            itemBuilder: (context, _) =>
                                                Icon(
                                                  Icons.star,
                                                  color:
                                                  CustomColors.dark_orange,
                                                ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          ),
                                          Center(
                                              child: Text(
                                                "Stock left : " +
                                                    discoverlist[index]
                                                        .stock_left,
                                                style: CustomColors
                                                    .km_distance_text,
                                              )),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Positioned(
                                    top: 10,
                                    right: 10,
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
                            )),
                      ),);
                  },
                ),
              )
            ],),))



          ],)
      ),
    );

  }
}
