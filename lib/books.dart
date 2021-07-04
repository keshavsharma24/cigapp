import 'package:cigapp/CigApp.dart';
import 'package:cigapp/crscalci.dart';
import 'package:cigapp/settings.dart';
import 'package:cigapp/transaction.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:toast/toast.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'registration.dart';

//import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'login.dart';

int amount =10;

bool Homeselected =false;
bool Ebookselected =false;
bool settingsselected =false;

class books extends StatefulWidget {
  @override
  _booksState createState() => _booksState();
}

class _booksState extends State<books> {

  Razorpay razorpay;
  TextEditingController textEditingController = new TextEditingController();

  @override
  void initState() {
    super.initState();

    razorpay = new Razorpay();

    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlerErrorFailure);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    razorpay.clear();
  }

  void openCheckout(){
    var options = {
      "key" : "rzp_test_VquAirD97JZDly",
      "amount" : 10*100,
      "name" : "CIG App",
      "description" : "Payment for the Guide Books",
      "prefill" : {
        "contact" : "8169537162",
        "email" : "keshavsharma156@gmail.com",
      },
      "external" : {
        "wallets" : ["paytm"]
      }
    };

    try{
      razorpay.open(options);

    }catch(e){
      print(e.toString());
    }

  }

  void handlerPaymentSuccess(){
    print("Pament success");
    Toast.show("Pament success", context);
  }

  void handlerErrorFailure(){
    print("Pament error");
    Toast.show("Pament error", context);
  }

  void handlerExternalWallet(){
    print("External Wallet");
    Toast.show("External Wallet", context);
  }



  @override
  Widget build(BuildContext context) {
    int _index =1;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/cig_background_new.jpg"),
                fit: BoxFit.cover
            )
        ),
        child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
        Container(

        margin: EdgeInsets.only(top: 20, bottom: 5),
        height: 25,
        width: MediaQuery.of(context).size.width*0.45,
        child: Row(
         // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FlatButton.icon(
                onPressed: () => {Navigator.pop(context)},
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.teal,
                  size: 20,
                ),
                label: Text("")),
            Center(
              child: Text(
                "Guide Books",
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
            //Spacer(flex: 1),
            // SizedBox(width: 20),
            // FlatButton.icon(onPressed: ()=>{},
            //   icon: Icon(Icons.delete_outline,color: Colors.teal,size: 20,), label:Text(""),),

          ],
        ),

         ),
              Column(
                children:<Widget>[
              //     ListView(
              // scrollDirection: Axis.vertical,
              //   children: <Widget>[
                     Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Container(
                       // width: MediaQuery.of(context).size.width*0.95,
                      //  child: Card(

                        decoration: BoxDecoration(
                            //image: DecorationImage(
                             //   image: AssetImage("images/cig_background_new.jpg"),
                              //  fit: BoxFit.cover,
                            //),
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.transparent,
                        ),
                       //   elevation: 5,
                        //  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          child:Column(
                            children:<Widget>[
                          Row(
                            children:<Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Container(
                                  height:120,
                                  width: MediaQuery.of(context).size.width*0.25,
                                 // color: Colors.black,
                                  decoration: BoxDecoration(
                                     // border: Border(bottom: BorderSide(color: Colors.black45)),
                                     // color: Colors.transparent,
                                    image: new DecorationImage(
                                        image: AssetImage("images/books.png")),
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:18.0),
                                child: Container(
                                  child: Column(
                                    children:<Widget>[
                                      Text("Name: Guide through"
                                          "\n Express Entry",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromRGBO(62,75,102,1),),),
                                      Text("Pages: 45",style: TextStyle(fontSize: 20,color: Color.fromRGBO(62,75,102,1),),),
                                      Text("Author: Keshav",style: TextStyle(fontSize: 20,color: Color.fromRGBO(62,75,102,1),),),
                                      Text("Context: This book will "
                                          "\n guide you through "
                                          "\n all the needs and"
                                          "\n procedure to grab "
                                          "\n chance to be PR of \n Canada through"
                                          "\n Express Entry mode \nand Much More... ",style: TextStyle(fontSize: 20,color: Color.fromRGBO(62,75,102,1),),)

                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                              Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: RaisedButton(
                                  onPressed: (){
                                    // Navigator.push(context,MaterialPageRoute(builder: (context) =>
                                    //     Transaction())),
                                    openCheckout();
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Center(
                                        child: Text("Buy now".toUpperCase(),
                                            style: TextStyle(color: Colors.white, fontSize: 25,fontFamily: 'DavidLibre'))),
                                  ),
                                  color: Colors.deepOrangeAccent.shade200,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                              ),
                            ],
                          ),

                        ),
                    ),
                //  ),
              //    ),

                  Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        //image: DecorationImage(
                        //   image: AssetImage("images/cig_background_new.jpg"),
                        //  fit: BoxFit.cover,
                        //),
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.transparent,
                      ),
                      // width: MediaQuery.of(context).size.width*0.95,
                    //  child: Card(
                     //   elevation: 5,
                      //  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        child:Column(
                          children:<Widget>[
                            Row(
                              children:<Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 25.0),
                                  child: Container(
                                    height:120,
                                    width: MediaQuery.of(context).size.width*0.25,
                                    // color: Colors.black,
                                    decoration: BoxDecoration(
                                      // border: Border(bottom: BorderSide(color: Colors.black45)),
                                      // color: Colors.transparent,
                                      image: new DecorationImage(
                                          image: AssetImage("images/briefcase.png")),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:18.0),
                                  child: Container(
                                    child: Column(
                                      children:<Widget>[
                                        Text("Name: Guide through"
                                            "\n PNP",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromRGBO(62,75,102,1),),),
                                        Text("Pages: 45",style: TextStyle(fontSize: 20,color: Color.fromRGBO(62,75,102,1),),),
                                        Text("Author: Keshav",style: TextStyle(fontSize: 20,color: Color.fromRGBO(62,75,102,1),),),
                                        Text("Context: This book will "
                                            "\n guide you through "
                                            "\n all the needs and"
                                            "\n procedure to grab "
                                            "\n chance to be PR of \n Canada through"
                                            "\n PNP mode \nand Much More... ",style: TextStyle(fontSize: 20,color: Color.fromRGBO(62,75,102,1),),),

                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: RaisedButton(
                                onPressed: (){
                                  // Navigator.push(context,MaterialPageRoute(builder: (context) =>
                                  //     Transaction())),
                                  openCheckout();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Center(
                                      child: Text("Buy now".toUpperCase(),
                                          style: TextStyle(color: Colors.white, fontSize: 25,fontFamily: 'DavidLibre'))),
                                ),
                                color: Colors.deepOrangeAccent.shade200,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                            ),
                          ],
                        ),

                      ),
                    ),
    //   ],
    // ),
               //   ),
                ],
              ),

      ],
    ),
      ),
    );
  }
}
