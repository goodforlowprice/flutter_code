import 'package:flutter/material.dart';
import 'package:good/ChildClasses/TodayOrder.dart';
import 'package:good/Component/Toolbar.dart';

import 'CustomColors.dart';
import 'model/paymentmethodsmodel.dart';

void main() {
  runApp(PaymentMethods());
}

class PaymentMethods extends StatefulWidget {
  @override
  ChildMyCart createState() => ChildMyCart();
}

class ChildMyCart extends State<PaymentMethods> {
  String selected_value="Cash on delivery";
  List<paymentmethodsmodel> list=[
    paymentmethodsmodel(id: "1", image: "assets/images/cod.png", title: "Cash on delivery"),
    paymentmethodsmodel(id: "1", image: "assets/images/gp.png", title: "Google Pay"),
    paymentmethodsmodel(id: "1", image: "assets/images/pp.png", title: "PayPal"),
    paymentmethodsmodel(id: "1", image: "assets/images/ppay.png", title: "PhonePe"),
    paymentmethodsmodel(id: "1", image: "assets/images/mk.png", title: "MobiKwik"),
    paymentmethodsmodel(id: "1", image: "assets/images/fr.png", title: "Freecharge"),
    paymentmethodsmodel(id: "1", image: "assets/images/wa.png", title: "Wallet"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Toolbar(title: "Payment Methods", cart_count: "0", show_cart: 'no'),
          Expanded(
              child: SingleChildScrollView(
            child:Column(children: [
              Padding(padding: EdgeInsets.only(left: 10,right: 10),child: GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                crossAxisCount: 3 ,
                children: List.generate(list.length,(index){
                  return
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          selected_value=list[index].title;
                        });
                      },
                      child: Container(

                        margin: EdgeInsets.only(left: 8,right: 8,top: 16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border:
                            Border.all(color:selected_value==list[index].title? CustomColors.light_orange:CustomColors.grey)),
                        child:
                        Column( mainAxisAlignment: MainAxisAlignment.center, children: [

                          Image.asset(
                            list[index].image,
                            height: 40,
                            width: 40,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(height: 10,),
                          Text(list[index].title,textAlign: TextAlign.center,style: CustomColors.list_title,)
                        ],),
                      ),
                    );


                }),
              ))


            ],),

          ))
        ],
      ),
    );
  }
}
