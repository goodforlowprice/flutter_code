import 'package:flutter/material.dart';
import 'package:good/ChildClasses/TodayOrder.dart';
import 'package:good/Component/Toolbar.dart';

import 'CustomColors.dart';

void main() {
  runApp(Faq());
}

class Faq extends StatefulWidget {
  @override
  ChildMyCart createState() => ChildMyCart();
}

class ChildMyCart extends State<Faq> {
  int register_index=-1;
  int login_index=-1;
  int order_index=-1;
  List<String> list=["1","2","3","4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Toolbar(title: "FAQs", cart_count: "0", show_cart: 'no'),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Help",
                          style: CustomColors.home_title_text,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Have an issue with your order / payment?",
                          style: CustomColors.faq_text,
                        ),
                      ),
                      SizedBox(height: 15,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Log a complaint - Click Here",
                          style: CustomColors.faq_subtext,
                        ),
                      ),
                      SizedBox(height: 15,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "If you'd like get in touch with us, please do write to us at dummy@dummy.com or Toolfree call us on 1234 567 890 24 hours throughout the wook and we will respond immediately.",
                          style: CustomColors.faq_subtext,
                        ),
                      ),
                      SizedBox(height: 15,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "You can also reach out to us on Whatsapp: 1234 567 890",
                          style: CustomColors.faq_subtext,
                        ),
                      ),
                      SizedBox(height: 35,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "FAQs",
                          style: CustomColors.home_title_text,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Freqency Asked Questions: ",
                          style: CustomColors.faq_text,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Check out this section to get answer for all the frequency ask questons",
                          style: CustomColors.faq_subtext,
                        ),
                      ),
                      SizedBox(height: 35,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Register",
                          style: CustomColors.home_title_text,
                        ),
                      ),
                      ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemCount: list.length,
                          scrollDirection: Axis.vertical,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                GestureDetector(
                                  onTap: () {

                                    if(register_index==index)
                                    {
                                      this.setState(() {
                                        register_index = -1;
                                      });
                                    }
                                    else
                                    {
                                      this.setState(() {
                                        register_index = index;
                                      });
                                    }

                                  },
                                  child: Padding(
                                    padding:
                                    EdgeInsets.only( top: 10),
                                    child: Row(
                                      children: [

                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 0),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Lipsum generator: Lorem Ipsum - All the facts",
                                                  style: CustomColors.ques_ques,
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: null,
                                          child: Padding(
                                            padding: EdgeInsets.only(right: 0,),
                                            child: Image.asset(register_index==index? 'assets/images/up.png':'assets/images/n_down.png',
                                              height: 15,
                                              width: 15,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: register_index == index
                                      ?
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child:Padding(padding: EdgeInsets.only(right: 20),
                                    child: Text(
                                      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                      style: CustomColors.ques_ans,
                                    ),)
                                    ,
                                  )
                                      : null,
                                ),
                              ],
                            );
                          }),
                      SizedBox(height: 35,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Login / Account Related",
                          style: CustomColors.home_title_text,
                        ),
                      ),
                      ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemCount: list.length,
                          scrollDirection: Axis.vertical,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                GestureDetector(
                                  onTap: () {

                                    if(login_index==index)
                                    {
                                      this.setState(() {
                                        login_index = -1;
                                      });
                                    }
                                    else
                                    {
                                      this.setState(() {
                                        login_index = index;
                                      });
                                    }

                                  },
                                  child: Padding(
                                    padding:
                                    EdgeInsets.only( top: 10),
                                    child: Row(
                                      children: [

                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 0),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Lipsum generator: Lorem Ipsum - All the facts",
                                                  style: CustomColors.ques_ques,
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: null,
                                          child: Padding(
                                            padding: EdgeInsets.only(right: 0,),
                                            child: Image.asset(login_index==index? 'assets/images/up.png':'assets/images/n_down.png',
                                              height: 15,
                                              width: 15,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: login_index == index
                                      ?
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child:Padding(padding: EdgeInsets.only(right: 20),
                                      child: Text(
                                        "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                        style: CustomColors.ques_ans,
                                      ),)
                                    ,
                                  )
                                      : null,
                                ),
                              ],
                            );
                          }),
                      SizedBox(height: 35,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Ordering / Payment",
                          style: CustomColors.home_title_text,
                        ),
                      ),
                      ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemCount: list.length,
                          scrollDirection: Axis.vertical,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                GestureDetector(
                                  onTap: () {

                                    if(order_index==index)
                                    {
                                      this.setState(() {
                                        order_index = -1;
                                      });
                                    }
                                    else
                                    {
                                      this.setState(() {
                                        order_index = index;
                                      });
                                    }

                                  },
                                  child: Padding(
                                    padding:
                                    EdgeInsets.only( top: 10),
                                    child: Row(
                                      children: [

                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 0),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Lipsum generator: Lorem Ipsum - All the facts",
                                                  style: CustomColors.ques_ques,
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: null,
                                          child: Padding(
                                            padding: EdgeInsets.only(right: 0,),
                                            child: Image.asset(order_index==index? 'assets/images/up.png':'assets/images/n_down.png',
                                              height: 15,
                                              width: 15,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: order_index == index
                                      ?
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child:Padding(padding: EdgeInsets.only(right: 20),
                                      child: Text(
                                        "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                        style: CustomColors.ques_ans,
                                      ),)
                                    ,
                                  )
                                      : null,
                                ),
                              ],
                            );
                          }),
                      SizedBox(height: 35,),

                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
