import 'package:flutter/material.dart';
import 'package:goodvendorapp/Classes/AddProductScreen.dart';
import 'package:goodvendorapp/Component/ProfileSectionFields.dart';
import 'package:goodvendorapp/Design/CustomColors.dart';
import 'package:goodvendorapp/Models/ActiveCoupons.dart';
import 'package:goodvendorapp/Models/CategoryList.dart';
import 'package:goodvendorapp/Models/storemodel.dart';
import 'SideMenu.dart';

class AddProduct extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<AddProduct> {
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
  List<CategoryList> menulist = [
    CategoryList(id: '1', title: "All"),
    CategoryList(id: '2', title: "Maxicon"),
    CategoryList(id: '3', title: "Indian"),
    CategoryList(id: '4', title: "Chinese"),
    CategoryList(id: '5', title: "Italian"),
    CategoryList(id: '6', title: "Beverage"),
  ];

  List<ActiveCoupons> activecouponlist=[
    ActiveCoupons(id: "1", title: "10 PERCENT", valid: "Valid till 25 january", max_users: "200 users max", discount: "10%"),
    ActiveCoupons(id: "2", title: "NEWYEAR", valid: "Valid till 30 january", max_users: "100 users max", discount: "30%")
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
                              child: Text("Add Products",
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
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Product Name*",
                        style: CustomColors.font_14_medium_black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 15, right: 15),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: CustomColors.grey)),
                    child: Expanded(
                      child: TextField(
                        onChanged: (text) => {

                        },
                        controller: TextEditingController(text: ""),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '',
                          hintStyle: CustomColors.font_12_grey,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      top: 5
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Do not exceed 20 charaters when entering the product name",
                        style: CustomColors.font_10_regular_grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                      top: 15
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Category*",
                        style: CustomColors.font_14_medium_black,
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10),
                  child: SizedBox(
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
                                          fontSize: CustomColors.font_10,
                                          fontFamily: 'poppins_regular',
                                          color: CustomColors.black)),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15,
                        top: 15
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Add Product Image*",
                        style: CustomColors.font_14_medium_black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15,
                        top: 5
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Add upto 5 images.First image is your product's cover image that will be highlighted everywhere.",
                        style: CustomColors.font_10_regular_grey,
                      ),
                    ),
                  ),
                  Align(alignment: Alignment.topLeft, child: Container(
                    margin: EdgeInsets.only(top: 10,left: 15),
                    padding: EdgeInsets.all(35),

                    decoration: BoxDecoration(
                      color: CustomColors.white,
                      borderRadius: BorderRadius.circular(3),
                      border:
                      Border.all(color: CustomColors.light_grey),

                    ),
                    child: Image.asset(
                      'assets/images/add.png',
                      height: 30,
                      width: 30,
                      fit: BoxFit.contain,
                    ),),),
                  SizedBox(height:20,),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Brand*",
                        style: CustomColors.font_14_medium_black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 15, right: 15),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: CustomColors.grey)),
                    child: Expanded(
                      child: TextField(
                        onChanged: (text) => {

                        },
                        controller: TextEditingController(text: ""),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '',
                          hintStyle: CustomColors.font_12_grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:20,),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Product Description*",
                        style: CustomColors.font_14_medium_black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 15, right: 15),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: CustomColors.grey)),
                    child: Expanded(
                      child: TextField(
                        onChanged: (text) => {

                        },
                        controller: TextEditingController(text: ""),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '',
                          hintStyle: CustomColors.font_12_grey,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20,
                        top: 5
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Do not exceed 150 charaters when entering the product description",
                        style: CustomColors.font_10_regular_grey,
                      ),
                    ),
                  ),
                  SizedBox(height:20,),
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
                  SizedBox(height:20,),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Select Product category*",
                        style: CustomColors.font_14_medium_black,
                      ),
                    ),
                  ),
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
                  SizedBox(height:20,),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "How many stock available*",
                        style: CustomColors.font_14_medium_black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 15, right: 15),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: CustomColors.grey)),
                    child: Expanded(
                      child: TextField(
                        onChanged: (text) => {

                        },
                        controller: TextEditingController(text: ""),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '',
                          hintStyle: CustomColors.font_12_grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:20,),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Set Price*",
                        style: CustomColors.font_14_medium_black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 15, right: 15),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: CustomColors.grey)),
                    child: Expanded(
                      child: TextField(
                        onChanged: (text) => {

                        },
                        controller: TextEditingController(text: ""),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '',
                          hintStyle: CustomColors.font_12_grey,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                  child:Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Discount Coupon",
                              style: CustomColors.font_14_medium_black,
                            ),
                          )),
                      Switch(
                        onChanged: toggleSwitch,
                        value: isSwitched,
                        activeColor: CustomColors.dark_orange,
                        activeTrackColor: CustomColors.light_grey,
                        inactiveThumbColor: CustomColors.dark_grey,
                        inactiveTrackColor: CustomColors.light_grey,
                      )
                    ],
                  )),
                  ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: activecouponlist.length,
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context,index)
                      {
                        return
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: CustomColors.grey)),
                            child: Column(children: [
                              Row(children: [
                                Expanded(child: Text(activecouponlist[index].title,style: CustomColors.font_14_medium_black,)),
                                Align(alignment: Alignment.centerRight, child: Text(activecouponlist[index].discount,style: CustomColors.font_14_medium_orange,),)
                              ],),
                              SizedBox(height: 5,),
                              Row(children: [
                                Image.asset(
                                  'assets/images/cal.png',
                                  height: 20,
                                  width: 20,
                                  fit: BoxFit.contain,
                                ),
                                Padding(padding: EdgeInsets.only(left: 5),
                                  child:  Text(activecouponlist[index].valid,style: CustomColors.font_12_regular,),)
                              ],),
                              SizedBox(height: 5,),
                              Row(children: [
                                Image.asset(
                                  'assets/images/users.png',
                                  height: 20,
                                  width: 20,
                                  fit: BoxFit.contain,
                                ),
                                Padding(padding: EdgeInsets.only(left: 5),
                                  child:  Text(activecouponlist[index].max_users,style: CustomColors.font_12_regular,),)
                              ],),
                            ],),
                          );

                      }
                  ),

                  Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 5),
                          padding: EdgeInsets.only(top: 11, bottom: 11),
                          decoration: BoxDecoration(
                            color: CustomColors.light_orange,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            "Cancel",
                            textAlign: TextAlign.center,
                            style: CustomColors.font_14_regular_white,
                          ),
                        ),
                      ),
                      Expanded(
                        child:
                            GestureDetector(
                              onTap: (){ Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  AddProductScreen()),
                              );},
                              child:  Container(
                                margin: EdgeInsets.only(left: 5),
                                padding: EdgeInsets.only(top: 11, bottom: 11),
                                decoration: BoxDecoration(
                                  color: CustomColors.dark_orange,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  "Save",
                                  textAlign: TextAlign.center,
                                  style: CustomColors.font_14_regular_white,
                                ),
                              ),
                            ),

                      ),
                    ],
                  ),),
                  SizedBox(
                    height: 25,
                  ),

                ],)
            )
            )
            ,




          ],
        ));
  }
}
