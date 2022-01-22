import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:good/ChildClasses/TodayOrder.dart';
import 'package:good/Component/Toolbar.dart';
import 'package:good/model/resturentmenumodel.dart';
import 'package:good/model/reviewmodel.dart';

import 'CustomColors.dart';
import 'model/cartmodel.dart';

void main() {
  runApp(Reviews());
}

class Reviews extends StatefulWidget {
  @override
  ChildMyCart createState() => ChildMyCart();
}

class ChildMyCart extends State<Reviews> {

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




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Toolbar(title: "Reviews", cart_count: "0", show_cart: 'yes'),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [

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
                               "assets/serverimages/bread.png",
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
                                   "Garlic Bread",
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomColors.list_title,
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),


                                  Row(
                                    children: [
                                      Text(
                                        "\$ 15.90/-",
                                        overflow: TextOverflow.visible,
                                        style: CustomColors.selling_price_text,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text(
                                          "\$ 17.90/-",
                                          overflow: TextOverflow.visible,
                                          style: CustomColors.actual_price_text,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ))
                        ],
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 10,bottom: 15),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: CustomColors.grey)),
                  child: Column(children: [
                  Row(children: [
                    Expanded(child: Column(children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Tell us your experiance",
                          style: CustomColors.already_account_text,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: RatingBar.builder(
                          itemSize: 25,
                          initialRating: 0,
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
                        ),
                      ),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Write your reviews",
                          style: CustomColors.already_account_text,
                        ),
                      )
                    ],)),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: CustomColors.grey,
                        borderRadius: BorderRadius.circular(5),

                        // border: Border.all(color: Colors.blueAccent)
                      ),
                      child:
                      Column(children: [

                        Image.asset(
                          'assets/images/add.png',
                          height: 15,
                          width: 15,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "Upload file",
                          style: CustomColors.cart_km_distance_text,
                        ),
                      ],),)
                  ],),
                    TextField (
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '',
                        hintStyle: CustomColors.edittext_loginpage_style,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "min 50 words",
                                style: CustomColors.cart_km_distance_text,
                              ),
                            )),
                        Container(
                          padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                          decoration: BoxDecoration(
                            color: CustomColors.dark_orange,
                            borderRadius: BorderRadius.circular(15),

                            // border: Border.all(color: Colors.blueAccent)
                          ),
                          child: Row(children: [
                            Text("Done",style: CustomColors.add_to_cart_text,),


                          ],),
                        )
                      ],
                    )
                ],),),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 10,bottom: 15),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: CustomColors.grey)),
                  child: Row(children: [
                    Padding(padding: EdgeInsets.only(left: 20),child: Center(child: Column(children: [
                      Text("4.0",style: CustomColors.sliderscreen_title_style,),
                      SizedBox(height: 5,),
                      Text("16k",style: CustomColors.otp_edittext,),
                    ],),),)
                    ,
                    Expanded(
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 25,right: 10),child:Row(children: [
                              Image.asset(
                                "assets/images/star.png",
                                height: 14,
                                width: 14,
                                fit: BoxFit.contain,
                              ),
                              Padding(padding: EdgeInsets.only(left: 5,right: 5),child:Text("5",style: CustomColors.list_title,) ,),
                              Container(
                                  height: 4,
                                  width: 140,
                                  color: CustomColors.dark_orange),
                              Container(
                                  height: 4,
                                  width: 50,
                                  color: CustomColors.grey),
                            ],) ,),
                            Padding(padding: EdgeInsets.only(left: 25,right: 10),child:Row(children: [
                              Image.asset(
                                "assets/images/star.png",
                                height: 14,
                                width: 14,
                                fit: BoxFit.contain,
                              ),
                              Padding(padding: EdgeInsets.only(left: 5,right: 5),child:Text("4",style: CustomColors.list_title,) ,),
                              Container(
                                  height: 4,
                                  width: 160,
                                  color: CustomColors.dark_orange),
                              Container(
                                  height: 4,
                                  width: 30,
                                  color: CustomColors.grey),
                            ],) ,),
                            Padding(padding: EdgeInsets.only(left: 25,right: 10),child:Row(children: [
                              Image.asset(
                                "assets/images/star.png",
                                height: 14,
                                width: 14,
                                fit: BoxFit.contain,
                              ),
                              Padding(padding: EdgeInsets.only(left: 5,right: 5),child:Text("3",style: CustomColors.list_title,) ,),
                              Container(
                                  height: 4,
                                  width: 30,
                                  color: CustomColors.dark_orange),
                              Container(
                                  height: 4,
                                  width: 160,
                                  color: CustomColors.grey)
                            ],) ,),
                            Padding(padding: EdgeInsets.only(left: 25,right: 10),child:Row(children: [
                              Image.asset(
                                "assets/images/star.png",
                                height: 14,
                                width: 14,
                                fit: BoxFit.contain,
                              ),
                              Padding(padding: EdgeInsets.only(left: 5,right: 5),child:Text("2",style: CustomColors.list_title,) ,),
                              Container(
                                  height: 4,
                                  width: 60,
                                  color: CustomColors.dark_orange),
                              Container(
                                  height: 4,
                                  width: 130,
                                  color: CustomColors.grey),
                            ],) ,),
                            Padding(padding: EdgeInsets.only(left: 25,right: 10),child:Row(children: [
                              Image.asset(
                                "assets/images/star.png",
                                height: 14,
                                width: 14,
                                fit: BoxFit.contain,
                              ),
                              Padding(padding: EdgeInsets.only(left: 5,right: 5),child:Text("1 ",style: CustomColors.list_title,) ,),
                              Container(
                                  height: 4,
                                  width: 40,
                                  color: CustomColors.dark_orange),
                              Container(
                                  height: 4,
                                  width: 150,
                                  color: CustomColors.grey)
                            ],) ,)

                        ],)
                    )
                  ],)),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10,top: 15),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Filter",
                              style: CustomColors.home_title_text,
                            ),
                          )),
                      Container(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                          decoration: BoxDecoration(
                            color: CustomColors.dark_orange,
                            borderRadius: BorderRadius.circular(15),

                            // border: Border.all(color: Colors.blueAccent)
                          ),
                        child: Row(children: [
                          Text("Top Rated",style: CustomColors.add_to_cart_text,),
                          Padding(padding: EdgeInsets.only(left: 5),child: Image.asset(
                            'assets/images/down.png',
                            height: 15,
                            width: 15,
                            fit: BoxFit.contain,
                            color:CustomColors.white,
                          ),)

                        ],),
                      )
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
                    return
                      Container(
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
                SizedBox(height: 40,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    padding: EdgeInsets.only(top: 3,left: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),

                    ),
                    child: MaterialButton(
                      minWidth: 180,
                      height:50,

                      onPressed: ()
                      {
                      },

                      color: CustomColors.light_orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text("Lode More",style: CustomColors.selling_price_text),
                    ),
                  ),
                ),
                SizedBox(height: 40,),


            ],
            ),
          ))
        ],
      ),
    );
  }
}
