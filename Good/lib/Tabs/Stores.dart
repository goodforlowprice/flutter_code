import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:good/Component/ProfileSectionFields.dart';
import 'package:good/model/storemodel.dart';
import 'package:good/model/weeklytopmodel.dart';

import '../CustomColors.dart';
import '../MyCart.dart';
import '../ResturentDetail.dart';
import 'SideMenu.dart';

class Stores extends StatefulWidget {
  @override
  ChildStores createState() => ChildStores();
}

class ChildStores extends State<Stores> {
  void openRestruentFunction()
  {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  ResturentDetail()),
    );
  }
  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  List<storemodel> storelist = [
    storemodel(
        id: "1", title: "Resturents", imagePath: 'assets/serverimages/res.png'),
    storemodel(
        id: "2", title: "Bakeries", imagePath: 'assets/serverimages/bak.png'),
    storemodel(
        id: "3", title: "Coffee", imagePath: 'assets/serverimages/cof.png'),
    storemodel(
        id: "4", title: "Groceries", imagePath: 'assets/serverimages/gro.png'),
  ];

  List<weeklytopmodel> weeklytoplist = [
    weeklytopmodel(
        id: "1",
        image: 'assets/serverimages/new_pizza.png',
        title: 'Pizza',
        price: '\$50.20/-',
        distance: "2.5km",
        storename: "Pizza Hut",
        rating: 4.0,
        cart_status: "false",
        qty: 0,
        fav_status: "false"),
    weeklytopmodel(
        id: "2",
        image: 'assets/serverimages/basket.png',
        title: 'Grocery',
        price: '\$30.20/-',
        distance: "3.5km",
        storename: "Dmart",
        rating: 4.0,
        cart_status: "false",
        qty: 0,
        fav_status: "false"),
    weeklytopmodel(
        id: "3",
        image: 'assets/serverimages/new_pizza.png',
        title: 'Pizza',
        price: '\$50.20/-',
        distance: "2.5km",
        storename: "Pizza Hut",
        rating: 4.0,
        cart_status: "false",
        qty: 0,
        fav_status: "false"),
    weeklytopmodel(
        id: "2",
        image: 'assets/serverimages/basket.png',
        title: 'Grocery',
        price: '\$30.20/-',
        distance: "3.5km",
        storename: "Dmart",
        rating: 4.0,
        cart_status: "false",
        qty: 0,
        fav_status: "false"),
  ];
  void cartFunction(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  MyCart()),
    );
  }
  void tmpFunction() {
    _scaffoldState.currentState?.openDrawer();
    print('Function Called.....');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: SideMenu(),
        key: _scaffoldState,
        body:Padding(padding: EdgeInsets.only(left: 10,right: 10),
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
                          child: Text("Profile",
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
            Expanded(child:
            SingleChildScrollView(
                child: Column(children: [

                  Row(
                    children: [
                      GestureDetector(
                        onTap: tmpFunction,
                        child: Padding(
                          padding: EdgeInsets.only(left: 0),
                          child: Image.asset(
                            'assets/images/location_new.png',
                            height: 25,
                            width: 25,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                                "Square Market 21451,Near\nNew York City",
                                style:
                                CustomColors.sliderscreen_subtitle_style),
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text("Change", style: CustomColors.change_text),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Catch it!",
                              style: CustomColors.catch_it_text,
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(top: 0),
                        child: Image.asset(
                          'assets/images/loc_button.png',
                          height: 50,
                          width: 50,
                          fit: BoxFit.contain,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 0, right: 2),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/filter_button.png',
                              height: 50,
                              width: 50,
                              fit: BoxFit.contain,
                            ),
                            Image.asset(
                              'assets/images/search_button.png',
                              height: 50,
                              width: 50,
                              fit: BoxFit.contain,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          child: SizedBox(
                            height: 70, // Constrain height.
                            child: ListView.builder(
                              itemCount: storelist.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        left: 5, right: 10, top: 10, bottom: 20),
                                    padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                    decoration: BoxDecoration(
                                      color: CustomColors.light_orange,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: CustomColors.grey.withOpacity(0.2),
                                          spreadRadius: 2,
                                          blurRadius: 7,
                                          offset: Offset(
                                              2, 5), // changes position of shadow
                                        ),
                                      ],
                                      // border: Border.all(color: Colors.blueAccent)
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 10),
                                          child: Image.asset(
                                            storelist[index].imagePath,
                                            height: 20,
                                            width: 25,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Align(
                                          child: Text(storelist[index].title,
                                              style: TextStyle(
                                                  fontSize:
                                                  CustomColors.extrasmall_font,
                                                  fontFamily: 'poppins_regular',
                                                  color: CustomColors.black)),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          )),
                    ],
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: weeklytoplist.length,
                    itemBuilder: (context, index) {
                      return

                        GestureDetector(
                          onTap:  openRestruentFunction,
                          child: Container(
                            margin: EdgeInsets.only( right: 5, bottom: 10, left: 5),
                            alignment: Alignment.topLeft,
                            child: Container(
                                width: double.infinity,
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
                                      offset: Offset(2, 5),
                                    ),
                                  ],
                                ),
                                child: Stack(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(0),
                                          child: Image.asset(
                                            weeklytoplist[index].image,
                                            height: 120,
                                            width: double.infinity,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10, top: 5),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  flex: 1,
                                                  child: Row(
                                                    children: [
                                                      Align(
                                                          child: Text(
                                                            weeklytoplist[index]
                                                                .title,
                                                            style: CustomColors
                                                                .list_title,
                                                          )),
                                                    ],
                                                  )),
                                              Align(
                                                  child: Text(
                                                      weeklytoplist[index]
                                                          .price,
                                                      style: CustomColors
                                                          .list_title))
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsets.only(left: 10, top: 2),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                EdgeInsets.only(right: 5),
                                                child: Image.asset(
                                                  'assets/images/orange_loc.png',
                                                  height: 15,
                                                  width: 15,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                              Align(
                                                  child: Text(
                                                      weeklytoplist[index]
                                                          .distance +
                                                          " - " +
                                                          weeklytoplist[index]
                                                              .storename,
                                                      style: CustomColors
                                                          .km_distance_text))
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 10,
                                              right: 0,
                                              top: 5,
                                              bottom: 10),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  flex: 1,
                                                  child: Row(
                                                    children: [
                                                      Wrap(
                                                        children: [
                                                          RatingBar.builder(
                                                            itemSize: 15,
                                                            initialRating: 4,
                                                            minRating: 1,
                                                            direction:
                                                            Axis.horizontal,
                                                            allowHalfRating:
                                                            true,
                                                            itemCount: 5,
                                                            itemPadding:
                                                            EdgeInsets.only(
                                                                right: 2),
                                                            itemBuilder:
                                                                (context, _) =>
                                                                Icon(
                                                                  Icons.star,
                                                                  color: CustomColors
                                                                      .dark_orange,
                                                                ),
                                                            onRatingUpdate:
                                                                (rating) {
                                                              print(rating);
                                                            },
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  )),
                                              Container(
                                                  padding: EdgeInsets.only(
                                                      top: 5, bottom: 5),
                                                  decoration: BoxDecoration(
                                                      color: CustomColors
                                                          .dark_orange,
                                                      borderRadius:
                                                      BorderRadius.only(
                                                        topLeft:
                                                        Radius.circular(5),
                                                        bottomLeft:
                                                        Radius.circular(5),
                                                      )),
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5, right: 5),
                                                    child: Text("Add to cart",
                                                        style: CustomColors
                                                            .add_to_cart_text),
                                                  ))
                                            ],
                                          ),
                                        ),
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
                          ),
                        );
                    },
                  )



                ],)
            )
            )
            ,




          ],
        ),));
  }
}
