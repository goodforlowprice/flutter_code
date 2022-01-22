import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:good/MyCart.dart';
import 'package:good/ResturentDetail.dart';
import 'package:good/model/discovermodel.dart';
import 'package:good/model/shopmodel.dart';
import 'package:good/model/storemodel.dart';
import 'package:good/model/weeklytopmodel.dart';
import '../CustomColors.dart';
import 'SideMenu.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double valueHolder = 20;
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
  List<shopmodel> shoplist = [
    shopmodel(id: "1", imagepath: 'assets/serverimages/shop_1.png'),
    shopmodel(id: "2", imagepath: 'assets/serverimages/shop_2.png'),
    shopmodel(id: "3", imagepath: 'assets/serverimages/shop_3.png'),
    shopmodel(id: "4", imagepath: 'assets/serverimages/shop_4.png'),
    shopmodel(id: "5", imagepath: 'assets/serverimages/shop_5.png'),
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
        id: "4",
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

  void openRestruentFunction() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResturentDetail()),
    );
  }

  void cartFunction() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyCart()),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldState,
        drawer: SideMenu(),
        body: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              SizedBox(
                height: 28,
              ),
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
                            child: Image.asset(
                              'assets/images/map.png',
                              height: 20,
                              width: 20,
                              fit: BoxFit.contain,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text("New York 2145",
                                style: CustomColors.home_location_text),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 0),
                            child: Image.asset(
                              'assets/images/down.png',
                              height: 15,
                              width: 15,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      )),
                  GestureDetector(
                    onTap: cartFunction,
                    child: Padding(
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
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Huge Discount Various Stores",
                        style: CustomColors.home_title_text,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    SizedBox(
                      height: 128, // Constrain height.
                      child: ListView.builder(
                        itemCount: storelist.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 75,
                              margin: const EdgeInsets.only(
                                  left: 5, right: 10, top: 10, bottom: 20),
                              padding:
                                  const EdgeInsets.only(top: 15, bottom: 15),
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
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 0),
                                    child: Image.asset(
                                      storelist[index].imagePath,
                                      height: 35,
                                      width: 35,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Align(
                                    child: Text(storelist[index].title,
                                        style: TextStyle(
                                            fontSize: CustomColors.small_font,
                                            fontFamily: 'poppins_regular',
                                            color: CustomColors.black)),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 0, right: 0, top: 10, bottom: 10),
                      padding: const EdgeInsets.only(left: 15, right: 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: CustomColors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(2, 5), // changes position of shadow
                          ),
                        ],
                        // border: Border.all(color: Colors.blueAccent)
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 0),
                            child: Image.asset(
                              'assets/images/search.png',
                              height: 20,
                              width: 20,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Expanded(
                              child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search your items ....',
                                hintStyle: CustomColors.edittext_serch_home,
                              ),
                            ),
                          )),
                          Wrap(
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  openAlertBox();
                                },
                                child: Container(
                                  clipBehavior: Clip.hardEdge,
                                  padding: EdgeInsets.only(
                                      top: 14, bottom: 14, left: 20, right: 20),
                                  decoration: BoxDecoration(
                                      color: CustomColors.dark_orange,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(25),
                                        bottomRight: Radius.circular(25),
                                      )),
                                  child: Image.asset(
                                    'assets/images/filter.png',
                                    height: 20,
                                    width: 20,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Shop Near By",
                                style: CustomColors.home_title_text,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(right: 0),
                          child: Image.asset(
                            'assets/images/right.png',
                            height: 20,
                            width: 20,
                            fit: BoxFit.contain,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: shoplist.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: openRestruentFunction,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 70,
                                margin: const EdgeInsets.only(
                                    left: 5, right: 10, top: 10, bottom: 20),
                                padding:
                                    const EdgeInsets.only(top: 15, bottom: 15),
                                decoration: BoxDecoration(
                                  color: Colors.white,
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
                                child: Center(
                                  child: Image.asset(
                                    shoplist[index].imagepath,
                                    height: 100,
                                    width: 100,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: Image.asset(
                                    'assets/images/star.png',
                                    height: 20,
                                    width: 20,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Top of the week",
                                    style: CustomColors.home_title_text,
                                  ),
                                )
                              ],
                            )),
                        Padding(
                          padding: EdgeInsets.only(right: 0, top: 5),
                          child: Text(
                            "See all",
                            style: CustomColors.view_all_text,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 225,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: weeklytoplist.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: openRestruentFunction,
                            child: Container(
                              margin: EdgeInsets.only(
                                  top: 10, right: 10, bottom: 10, left: 5),
                              alignment: Alignment.topLeft,
                              child: Container(
                                  width: 200,
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
                                              width: 200,
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
                                            padding: EdgeInsets.only(
                                                left: 10, top: 2),
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
                                                              direction: Axis
                                                                  .horizontal,
                                                              allowHalfRating:
                                                                  true,
                                                              itemCount: 5,
                                                              itemPadding:
                                                                  EdgeInsets
                                                                      .only(
                                                                          right:
                                                                              2),
                                                              itemBuilder:
                                                                  (context,
                                                                          _) =>
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
                                                              Radius.circular(
                                                                  5),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  5),
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
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Discover New Places",
                                style: CustomColors.home_title_text,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(right: 0),
                          child: Image.asset(
                            'assets/images/right.png',
                            height: 20,
                            width: 20,
                            fit: BoxFit.contain,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 215,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: discoverlist.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: openRestruentFunction,
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
                                                  style:
                                                      CustomColors.list_title,
                                                )),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 3, bottom: 3),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
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
                                                              discoverlist[
                                                                      index]
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
                                                    color: CustomColors
                                                        .dark_orange,
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
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )),
            ],
          ),
        ));
  }

  openAlertBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(22.0))),
            contentPadding: EdgeInsets.only(top: 10.0),
            content: Container(
              width: 350.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: (){Navigator.pop(context);},
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(
                          'assets/images/cross.png',
                          height: 35,
                          width: 35,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "FILTER",
                                        style: CustomColors.selling_price_text,
                                      ),
                                    )
                                  ],
                                )),
                            Padding(
                              padding: EdgeInsets.only(right: 0, top: 5),
                              child: Text(
                                "Clear all",
                                style: CustomColors.change_text,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Distance Coverage",
                            style: CustomColors.home_title_text,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                          height: 20,
                          child: Slider(
                            value: valueHolder,
                            min: 0,
                            max: 100,
                            divisions: 1,
                            activeColor: CustomColors.dark_orange,
                            inactiveColor: Colors.grey,
                            label: valueHolder.round().toString(),
                            onChanged: (double value) {
                              setState(() {
                                valueHolder = value;
                              });

                              print(valueHolder.toString());
                            },
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 25),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "0 km",
                                        style: CustomColors.order_list_field,
                                      ),
                                    )
                                  ],
                                )),
                            Padding(
                              padding: EdgeInsets.only(right: 0, top: 5),
                              child: Text(
                                "100 km",
                                style: CustomColors.order_list_field,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Price",
                            style: CustomColors.home_title_text,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                          height: 20,
                          child: Slider(
                            value: valueHolder,
                            min: 0,
                            max: 100,
                            divisions: 1,
                            activeColor: CustomColors.dark_orange,
                            inactiveColor: Colors.grey,
                            label: valueHolder.round().toString(),
                            onChanged: (double value) {
                              setState(() {
                                valueHolder = value;
                              });

                              print(valueHolder.toString());
                            },
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 25),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "\$10",
                                        style: CustomColors.order_list_field,
                                      ),
                                    )
                                  ],
                                )),
                            Padding(
                              padding: EdgeInsets.only(right: 0, top: 5),
                              child: Text(
                                "\$250",
                                style: CustomColors.order_list_field,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Custom Rating",
                            style: CustomColors.home_title_text,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Image.asset(
                                'assets/images/rb_s.png',
                                height: 20,
                                width: 20,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              "4 * & above",
                              style: CustomColors.cart_km_distance_text,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 5, left: 15),
                              child: Image.asset(
                                'assets/images/rb_u.png',
                                height: 20,
                                width: 20,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              "3 *",
                              style: CustomColors.cart_km_distance_text,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 5, left: 15),
                              child: Image.asset(
                                'assets/images/rb_u.png',
                                height: 20,
                                width: 20,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              "2 * ",
                              style: CustomColors.cart_km_distance_text,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Availability of time",
                            style: CustomColors.home_title_text,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Image.asset(
                                'assets/images/rb_s.png',
                                height: 20,
                                width: 20,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              "Any",
                              style: CustomColors.cart_km_distance_text,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 5, left: 15),
                              child: Image.asset(
                                'assets/images/rb_u.png',
                                height: 20,
                                width: 20,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              "24 Hours",
                              style: CustomColors.cart_km_distance_text,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Type of Food",
                            style: CustomColors.home_title_text,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Image.asset(
                                'assets/images/rb_s.png',
                                height: 20,
                                width: 20,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              "Any",
                              style: CustomColors.cart_km_distance_text,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 5, left: 15),
                              child: Image.asset(
                                'assets/images/rb_u.png',
                                height: 20,
                                width: 20,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              "Non-Veg",
                              style: CustomColors.cart_km_distance_text,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 5, left: 15),
                              child: Image.asset(
                                'assets/images/rb_u.png',
                                height: 20,
                                width: 20,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              "Veg",
                              style: CustomColors.cart_km_distance_text,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Pickup Time",
                            style: CustomColors.home_title_text,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Image.asset(
                                'assets/images/rb_s.png',
                                height: 20,
                                width: 20,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              "Any Time",
                              style: CustomColors.cart_km_distance_text,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 5, left: 15),
                              child: Image.asset(
                                'assets/images/rb_u.png',
                                height: 20,
                                width: 20,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              "Choose from Frame",
                              style: CustomColors.cart_km_distance_text,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
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
                              Navigator.pop(context);
                            },
                            color: CustomColors.dark_orange,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Text("Apply",
                                style: CustomColors.sliderscreen_button_style),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
