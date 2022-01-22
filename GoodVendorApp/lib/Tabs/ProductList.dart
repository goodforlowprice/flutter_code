import 'package:flutter/material.dart';
import 'package:goodvendorapp/Component/ProfileSectionFields.dart';
import 'package:goodvendorapp/Design/CustomColors.dart';
import 'package:goodvendorapp/Models/ActiveCoupons.dart';
import 'package:goodvendorapp/Models/CategoryList.dart';
import 'package:goodvendorapp/Models/Products.dart';
import 'package:goodvendorapp/Models/storemodel.dart';
import 'SideMenu.dart';

class ProductList extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<ProductList> {
  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  bool isSwitched = false;
  bool isSwitched_nonveg = false;
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


  void toggleSwitch_nonveg(bool value) {
    if (isSwitched_nonveg == false) {
      setState(() {
        isSwitched_nonveg = true;
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched_nonveg = false;
      });
    }
  }
  List<CategoryList> menulist = [
    CategoryList(id: '1', title: "All"),
    CategoryList(id: '2', title: "Maxicon"),
    CategoryList(id: '3', title: "Indian"),
    CategoryList(id: '4', title: "Chinese"),
    CategoryList(id: '5', title: "Italian"),
    CategoryList(id: '6', title: "Beverage"),
  ];
  List<Products> list = [
    Products(
        id: "1",
        image: "assets/serverimages/bread.png",
        title: "Garlic Bread",
        stock: "600",
        selling_price: "\$15.76/-",
        actual_price: "\$17.76/-",
        qty: "1"),
    Products(
        id: "2",
        image: "assets/serverimages/chilly.png",
        title: "Chilly Chicken",
        stock: "340",
        selling_price: "\$15.76/-",
        actual_price: "\$17.76/-",
        qty: "2"),
    Products(
        id: "3",
        image: "assets/serverimages/roti.png",
        title: "Tava Roti",
        stock: "235",
        selling_price: "\$2.00/-",
        actual_price: "\$3.76/-",
        qty: "5"),
    Products(
        id: "1",
        image: "assets/serverimages/bread.png",
        title: "Garlic Bread",
        stock: "600",
        selling_price: "\$15.76/-",
        actual_price: "\$17.76/-",
        qty: "1"),
    Products(
        id: "2",
        image: "assets/serverimages/chilly.png",
        title: "Chilly Chicken",
        stock: "340",
        selling_price: "\$15.76/-",
        actual_price: "\$17.76/-",
        qty: "2"),
    Products(
        id: "3",
        image: "assets/serverimages/roti.png",
        title: "Tava Roti",
        stock: "235",
        selling_price: "\$2.00/-",
        actual_price: "\$3.76/-",
        qty: "5"),
  ];


  void tmpFunction() {
    _scaffoldState.currentState?.openDrawer();
    print('Function Called.....');
  }
  void cartFunction(){
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) =>  MyCart()),
    // );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: SideMenu(),
        key: _scaffoldState,
        body:
        Column(
          children: [
            CustomColors.margin_on_top,
            Padding(padding: EdgeInsets.only(left: 10,right: 10),
                child:  Row(
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
                              child: Text("Products List",
                                  style: CustomColors.font_16_regular),
                            ),
                          ],
                        )),
                    GestureDetector(
                      onTap: cartFunction,
                      child:   Padding(
                        padding: EdgeInsets.only(right: 0),
                        child: Image.asset(
                          'assets/images/notification.png',
                          height: 25,
                          width: 25,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ) ),
            SizedBox(
              height: 25,
            ),
            Expanded(child:
            SingleChildScrollView(
                child: Column(children: [
                  Row(children: [
                    Expanded(child:
                        Padding(padding: EdgeInsets.only(left: 15),
                        child:Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          Image.asset(
                            'assets/images/veg.png',
                            height: 20,
                            width: 20,
                            fit: BoxFit.contain,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 6,right: 6,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Veg",
                                style: CustomColors.font_14_medium_black,
                              ),
                            ),
                          ),
                          Switch(
                            onChanged: toggleSwitch,
                            value: isSwitched,
                            activeColor: CustomColors.dark_orange,
                            activeTrackColor: CustomColors.light_grey,
                            inactiveThumbColor: CustomColors.dark_grey,
                            inactiveTrackColor: CustomColors.light_grey,
                          )
                        ],) ,),
                    ),
                    Expanded(child:
                    Padding(padding: EdgeInsets.only(left: 15),
                      child:Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/nonveg.png',
                            height: 20,
                            width: 20,
                            fit: BoxFit.contain,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 6,right: 6,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Non Veg",
                                style: CustomColors.font_14_medium_black,
                              ),
                            ),
                          ),
                          Switch(
                            onChanged: toggleSwitch_nonveg,
                            value: isSwitched_nonveg,
                            activeColor: CustomColors.dark_orange,
                            activeTrackColor: CustomColors.light_grey,
                            inactiveThumbColor: CustomColors.dark_grey,
                            inactiveTrackColor: CustomColors.light_grey,
                          )
                        ],) ,),
                    )
                  ],),
                  Padding(
                    padding: EdgeInsets.only(left: 10,top: 10),
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
                                style: CustomColors.font_10_regular_grey,
                              ),
                            );
                          }),
                    ),
                  ),
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
                            child: Row(
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
                                          style: CustomColors.font_12_regular,
                                        ),

                                        SizedBox(
                                          height: 3,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              list[index].selling_price,
                                              overflow: TextOverflow.visible,
                                              style: CustomColors.font_14_medium_black,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 5),
                                              child: Text(
                                                list[index].actual_price,
                                                overflow: TextOverflow.visible,
                                                style: CustomColors.font_12_medium_underline,
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
                                                            .font_12_regular,
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
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Stock left : " + list[index].stock,
                                              overflow: TextOverflow.visible,
                                              style: CustomColors.font_10_medium_orange,
                                            ),
                                            Expanded(child: Align(alignment: Alignment.topRight,child:Text(
                                              "Add/Abstract stock",
                                              overflow: TextOverflow.visible,
                                              style: CustomColors.font_10_regular_grey,
                                            ) ,)),

                                          ],
                                        ),

                                      ],
                                    ))
                              ],
                            ),
                          );
                      }),
                  SizedBox(
                    height: 10,
                  ),

                ],)
            )
            )
            ,




          ],
        ));
  }
}
