import 'package:cigapp/CigApp.dart';
import 'package:cigapp/books.dart';
import 'package:cigapp/settings.dart';
import 'package:flutter/cupertino.dart';
// ignore: avoid_web_libraries_in_flutter
//import 'dart:html';

import 'package:cigapp/crscalci.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

//import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'colorscheme.dart';

var totalscore= 0;
var agescore = 0;
var eduscore =0;
var caneduscore =0;
var totalworkexprience=0;
var abc =0;

var qualificationcertificate =0;

var currentslidervalue =0.0;
var foreignslidervalue =0.0;
bool checkedvalue =false;
bool checkvalue= false;
bool tefvalue = false;
bool tcfvalue =false;
bool navalue = false;
var canadianworkexprience =0;
var foreignworkexprience =0;

String languagename;
String frenchlanguagename;
double slidervalue =0;
double frenchvalue =0;
int englishlanguagescore =0;
int frenchlanguagescore =0;
int accumulativelanguagescore = 0;


bool valuefirst = false;
bool valuesecond =false;
bool relationvalue =false;
bool nominationvalue =false;

int noc00 =0;
int noc0a =0;
int lmiapoint1 =0;
int relationpoints =0;
int nominationpoints =0;
int additionalpoint1 =0;

int skilltransfer = caneduscore+ foreignexprience()+qualificationcertificate;
int additional =caneduscore+_frenchlanguagetestscore()+relationpoints+nominationpoints+lmiapoint();


bool Homeselected =false;
bool Ebookselected =false;
bool settingsselected =false;


class crscalci extends StatefulWidget  {
  @override
  _crscalciState createState() => _crscalciState();
}

 class _crscalciState extends State<crscalci> with TickerProviderStateMixin {
_getRequest()async{}

@override
void didChangeAppLifecycleState(AppLifecycleState state) {
  setState((){
    additional =caneduscore+_frenchlanguagetestscore()+relationpoints+nominationpoints+lmiapoint();
  });
}


  @override
  Widget build(BuildContext context) {
    int _index =0;
    return Scaffold(
      body: Container(
       // alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/cig_background_new.jpg"),
                fit: BoxFit.cover
            )
        ),
      //  color: Colors.orange,
        child: ListView(
        //    scrollDirection: Axis.vertical,
            children: <Widget>[
        SafeArea(
          child: Container(

          margin: EdgeInsets.only(top: 20, bottom: 5),
          height: 25,
          width: MediaQuery.of(context).size.width*0.45,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FlatButton.icon(
                  onPressed: () => {Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => CigApp()))},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.teal,
                    size: 20,
                  ),
                  label: Text("")),
              Text(
                "Your Eligibility Score",
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              //Spacer(flex: 1),
              SizedBox(width: 20),
              // FlatButton.icon(onPressed: ()=>{},
              // icon: Icon(Icons.delete_outline,color: Colors.teal,size: 20,), label:Text(""),),

            ],
          ),
          //alignment: MainAxisAlignment.,
          // child: Text("Where To begin.."),)
      ),
        ),
      //
              //
                      Padding(
                padding: const EdgeInsets.only(bottom:5.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 80,
                  width: 100,
                 // color: Colors.amber,
                  child: Card(
                    elevation: 5,
                    margin: EdgeInsets.only(right: 10,left: 10),
                    //color: Colors.amber,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top:20.0,bottom: 20.0,left:15),
                          child: Text("Score:",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,
                          color: Colorscheme.text_blue),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                          child: Text("$totalscore",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colorscheme.text_blue),),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // Positioned(
              //   top:120,
              //   left: 0,
              //   right: 0,
    //            child:
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.8,
                   // width: 350,
                    width: MediaQuery.of(context).size.width,
                   // color: Colors.black45,
                  //  alignment: Alignment.center,
                  //  color: Colors.amber,
                    child:ListView(
                      scrollDirection: Axis.vertical,
                     // scrollDirection: Axis.horizontal,
                      children:<Widget>[
                        Column(
                          children:<Widget>[
                            // ListView(
                            //   scrollDirection: Axis.vertical,
                            //   children:<Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:<Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left:10.0,right:10.0),
                              child: Container(
                                height: 200,
                               // width: 190,
                                width: MediaQuery.of(context).size.width*0.46,
                                //color: Colors.black,
                                child:Card(
                                  elevation: 10,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                                child: Column(
                                  children:<Widget>[
                                    Container(
                                      height: 120,
                                      // child:Card(
                                      //     elevation: 10,
                                      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                                      // child: Container(
                                      margin: EdgeInsets.only(
                                          top: 10, bottom: 10, left: 20, right: 20),
                                      //  color: Colors.transparent,
                                      decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Colors.black45)),
                                        color: Colors.transparent,
                                        image: new DecorationImage(
                                            image: AssetImage("images/wedding-ring.png")),
                                      ),
                                  //    ),
                             // ),
                                    ),
                                    Container(
                                      height: 50,
                                      //width:180,
                                        width: MediaQuery.of(context).size.width*0.46,
                                      //color: Colors.green,
                                       // child:Card(
                                       // elevation: 10,
                                           // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top:10.0,left: 15),
                                      child: Text("Marital Status",style: TextStyle(fontSize: 20),),
                                    )
                                   // ),
                                    ),
                                  ],
                                ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        content: Stack(
                                          overflow: Overflow.visible,
                                          children: <Widget>[
                                            Container(
                                              alignment: Alignment.center,
                                              height: MediaQuery.of(context).size.height*0.75,
                                              //width: 300,
                                              width: MediaQuery.of(context).size.width*0.75,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage("images/cig_background_new.jpg"),
                                                      fit: BoxFit.cover
                                                  )
                                              ),
                                             // color: Colors.black45,
                                              child:ListView(
                                                scrollDirection: Axis.vertical,
                                                children:<Widget>[
                                              Column(
                                                children: <Widget>[
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        agescore = 110;
                                                        totalscore = _score();
                                                     //   agecentervalue = "12";
                                                     //   totaleligibilityscore = _calculatiofinal();
                                                      });
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                        height: 45,
                                                        width: 350,
                                                        //color: Colors.pinkAccent.shade100,

                                                        child: Card(
                                                          elevation: 5,
                                                          margin: EdgeInsets.only(
                                                              top: 3.0, bottom: 3.0),
                                                          color: Colors
                                                              .greenAccent.shade100,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                              BorderRadius.circular(
                                                                  7.0)),
                                                          child: Center(
                                                              child: Text(
                                                                "Age: 18-35",
                                                                style:
                                                                TextStyle(fontSize: 28),
                                                              )),
                                                        )),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        // agevalue = 0.9;
                                                        // agecentervalue = "11";
                                                        // totaleligibilityscore = _calculatiofinal();
                                                        agescore = 105;
                                                        totalscore = _score();
                                                      });
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      height: 45,
                                                      width: 350,
                                                      child: Card(
                                                        color:
                                                        Colors.greenAccent.shade100,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(
                                                                7.0)),
                                                        elevation: 5,
                                                        margin: EdgeInsets.all(3),
                                                        child: Center(
                                                            child: Text(
                                                              "Age: 36",
                                                              style:
                                                              TextStyle(fontSize: 27),
                                                            )),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        // agevalue = 0.8;
                                                        // agecentervalue = "10";
                                                        // totaleligibilityscore = _calculatiofinal();
                                                        agescore = 99;
                                                        totalscore = _score();
                                                      });
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      height: 45,
                                                      width: 350,
                                                      child: Card(
                                                        color:
                                                        Colors.greenAccent.shade100,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(
                                                                7.0)),
                                                        elevation: 5,
                                                        margin: EdgeInsets.all(3),
                                                        child: Center(
                                                            child: Text(
                                                              "Age: 37",
                                                              style:
                                                              TextStyle(fontSize: 27),
                                                            )),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        // agevalue = 0.7;
                                                        // agecentervalue = "9";
                                                        // totaleligibilityscore = _calculatiofinal();
                                                        agescore = 94;
                                                        totalscore = _score();
                                                      });
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      height: 45,
                                                      width: 350,
                                                      child: Card(
                                                        color:
                                                        Colors.greenAccent.shade100,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(
                                                                7.0)),
                                                        elevation: 5,
                                                        margin: EdgeInsets.all(3),
                                                        child: Center(
                                                            child: Text(
                                                              "Age: 38",
                                                              style:
                                                              TextStyle(fontSize: 27),
                                                            )),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        // agevalue = 0.6;
                                                        // agecentervalue = "8";
                                                        // totaleligibilityscore = _calculatiofinal();
                                                        agescore = 88;
                                                        totalscore = _score();
                                                      });
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      height: 45,
                                                      width: 350,
                                                      child: Card(
                                                        color:
                                                        Colors.greenAccent.shade100,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(
                                                                7.0)),
                                                        elevation: 5,
                                                        margin: EdgeInsets.all(3),
                                                        child: Center(
                                                            child: Text(
                                                              "Age: 39",
                                                              style:
                                                              TextStyle(fontSize: 27),
                                                            )),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        // agevalue = 0.5;
                                                        // agecentervalue = "7";
                                                        // totaleligibilityscore = _calculatiofinal();
                                                        agescore = 83;
                                                        totalscore = _score();
                                                      });
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      height: 45,
                                                      width: 350,
                                                      child: Card(
                                                        color:
                                                        Colors.greenAccent.shade100,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(
                                                                7.0)),
                                                        elevation: 5,
                                                        margin: EdgeInsets.all(3),
                                                        child: Center(
                                                            child: Text(
                                                              "Age: 40",
                                                              style:
                                                              TextStyle(fontSize: 27),
                                                            )),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        // agevalue = 0.4;
                                                        // agecentervalue = "6";
                                                        // totaleligibilityscore = _calculatiofinal();
                                                        agescore = 77;
                                                        totalscore = _score();
                                                      });
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      height: 45,
                                                      width: 350,
                                                      child: Card(
                                                        color:
                                                        Colors.greenAccent.shade100,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(
                                                                7.0)),
                                                        elevation: 5,
                                                        margin: EdgeInsets.all(3),
                                                        child: Center(
                                                            child: Text(
                                                              "Age: 41",
                                                              style:
                                                              TextStyle(fontSize: 27),
                                                            )),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        // agevalue = 0.3;
                                                        // agecentervalue = "5";
                                                        // totaleligibilityscore = _calculatiofinal();
                                                        agescore = 72;
                                                        totalscore = _score();
                                                      });
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      height: 45,
                                                      width: 350,
                                                      child: Card(
                                                        color:
                                                        Colors.greenAccent.shade100,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(
                                                                7.0)),
                                                        elevation: 5,
                                                        margin: EdgeInsets.all(3),
                                                        child: Center(
                                                            child: Text(
                                                              "Age: 42",
                                                              style:
                                                              TextStyle(fontSize: 27),
                                                            )),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        // agevalue = 0.35;
                                                        // agecentervalue = "4";
                                                        // totaleligibilityscore = _calculatiofinal();
                                                        agescore = 66;
                                                        totalscore = _score();
                                                      });
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      height: 45,
                                                      width: 350,
                                                      child: Card(
                                                        color:
                                                        Colors.greenAccent.shade100,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(
                                                                7.0)),
                                                        elevation: 5,
                                                        margin: EdgeInsets.all(3),
                                                        child: Center(
                                                            child: Text(
                                                              "Age: 42",
                                                              style:
                                                              TextStyle(fontSize: 27),
                                                            )),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        // agevalue = 0.3;
                                                        // agecentervalue = "3";
                                                        // totaleligibilityscore = _calculatiofinal();
                                                        agescore = 61;
                                                        totalscore = _score();
                                                      });
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      height: 45,
                                                      width: 350,
                                                      child: Card(
                                                        color:
                                                        Colors.greenAccent.shade100,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(
                                                                7.0)),
                                                        elevation: 5,
                                                        margin: EdgeInsets.all(3),
                                                        child: Center(
                                                            child: Text(
                                                              "Age: 43",
                                                              style:
                                                              TextStyle(fontSize: 27),
                                                            )),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        // agevalue = 0.2;
                                                        // agecentervalue = "2";
                                                        // totaleligibilityscore = _calculatiofinal();
                                                        agescore = 55;
                                                        totalscore = _score();
                                                      });
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      height: 45,
                                                      width: 350,
                                                      child: Card(
                                                        color:
                                                        Colors.greenAccent.shade100,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(
                                                                7.0)),
                                                        elevation: 5,
                                                        margin: EdgeInsets.all(3),
                                                        child: Center(
                                                            child: Text(
                                                              "Age: 44",
                                                              style:
                                                              TextStyle(fontSize: 27),
                                                            )),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        // agevalue = 0.1;
                                                        // agecentervalue = "1";
                                                        // totaleligibilityscore = _calculatiofinal();
                                                        agescore = 50;
                                                        totalscore = _score();
                                                      });
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      height: 45,
                                                      width: 350,
                                                      child: Card(
                                                        color:
                                                        Colors.greenAccent.shade100,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(
                                                                7.0)),
                                                        elevation: 5,
                                                        margin: EdgeInsets.all(3),
                                                        child: Center(
                                                            child: Text(
                                                              "Age: 45",
                                                              style:
                                                              TextStyle(fontSize: 27),
                                                            )),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        // agevalue = 0.1;
                                                        // agecentervalue = "1";
                                                        // totaleligibilityscore = _calculatiofinal();
                                                        agescore = 39;
                                                        totalscore = _score();
                                                      });
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      height: 45,
                                                      width: 350,
                                                      child: Card(
                                                        color:
                                                        Colors.greenAccent.shade100,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(
                                                                7.0)),
                                                        elevation: 5,
                                                        margin: EdgeInsets.all(3),
                                                        child: Center(
                                                            child: Text(
                                                              "Age: 46",
                                                              style:
                                                              TextStyle(fontSize: 27),
                                                            )),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        // agevalue = 0.1;
                                                        // agecentervalue = "1";
                                                        // totaleligibilityscore = _calculatiofinal();
                                                        agescore = 28;
                                                        totalscore = _score();
                                                      });
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      height: 45,
                                                      width: 350,
                                                      child: Card(
                                                        color:
                                                        Colors.greenAccent.shade100,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(
                                                                7.0)),
                                                        elevation: 5,
                                                        margin: EdgeInsets.all(3),
                                                        child: Center(
                                                            child: Text(
                                                              "Age: 47",
                                                              style:
                                                              TextStyle(fontSize: 27),
                                                            )),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        // agevalue = 0.1;
                                                        // agecentervalue = "1";
                                                        // totaleligibilityscore = _calculatiofinal();
                                                        agescore = 17;
                                                        totalscore = _score();
                                                      });
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      height: 45,
                                                      width: 350,
                                                      child: Card(
                                                        color:
                                                        Colors.greenAccent.shade100,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(
                                                                7.0)),
                                                        elevation: 5,
                                                        margin: EdgeInsets.all(3),
                                                        child: Center(
                                                            child: Text(
                                                              "Age: 48",
                                                              style:
                                                              TextStyle(fontSize: 27),
                                                            )),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        // agevalue = 0.1;
                                                        // agecentervalue = "1";
                                                        // totaleligibilityscore = _calculatiofinal();
                                                        agescore = 6;
                                                        totalscore = _score();
                                                      });
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      height: 45,
                                                      width: 350,
                                                      child: Card(
                                                        color:
                                                        Colors.greenAccent.shade100,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(
                                                                7.0)),
                                                        elevation: 5,
                                                        margin: EdgeInsets.all(3),
                                                        child: Center(
                                                            child: Text(
                                                              "Age: 49",
                                                              style:
                                                              TextStyle(fontSize: 27),
                                                            )),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        // agevalue = 0.1;
                                                        // agecentervalue = "1";
                                                        // totaleligibilityscore = _calculatiofinal();
                                                        agescore = 0;
                                                      });
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      height: 45,
                                                      width: 350,
                                                      child: Card(
                                                        color:
                                                        Colors.greenAccent.shade100,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(
                                                                7.0)),
                                                        elevation: 5,
                                                        margin: EdgeInsets.all(3),
                                                        child: Center(
                                                            child: Text(
                                                              "Age: 50",
                                                              style:
                                                              TextStyle(fontSize: 27),
                                                            )),
                                                      ),
                                                    ),

                                                  ),
                                                ],
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      );
                                    });
                              },
                            child: Container(
                              height: 200,
                             // width: 190,
                              width: MediaQuery.of(context).size.width*0.46,
                              //color:Colors.green,

                              child:Card(
                                elevation: 10,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                                child: Column(
                                  children:<Widget>[
                                    Container(
                                      height: 120,
                                      // child:Card(
                                      //     elevation: 10,
                                      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                                      // child: Container(
                                      margin: EdgeInsets.only(
                                          top: 10, bottom: 10, left: 20, right: 20),
                                      //  color: Colors.transparent,
                                      decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Colors.black45)),
                                        color: Colors.transparent,
                                        image: new DecorationImage(
                                            image: AssetImage("images/birthday-cake.png")),
                                      ),
                                      //    ),
                                      // ),
                                    ),

                                    Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width*0.46,
                                       // width:180,
                                        //color: Colors.green,
                                        // child:Card(
                                        // elevation: 10,
                                        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children:<Widget>[
                                        //Padding(
                                        //  padding: const EdgeInsets.only(top:10.0),
                                            Text("Age",style: TextStyle(fontSize: 20),),
                                       // ),
                                            Text("$agescore",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                                  ],
                            ),
                                      // ),
                                    ),
                                  ],
                                ),
                              ),


                             // color: Colors.green,
                            ),
                            ),
                          ],
                    ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children:<Widget>[
                                InkWell(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            content: Stack(
                                              overflow: Overflow.visible,
                                              children: <Widget>[
                                                Container(
                                                  alignment: Alignment.center,
                                                  width: 300,
                                                  height: MediaQuery.of(context).size.height*0.65,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage("images/cig_background_new.jpg"),
                                                          fit: BoxFit.cover
                                                      )
                                                  ),
                                                  child:ListView(
                                                    scrollDirection: Axis.vertical,
                                                    children:<Widget>[
                                                  Column(
                                                    children: <Widget>[
                                                      InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            // educationvalue = 1.0;
                                                            // educationcentervalue = "25";
                                                            // totaleligibilityscore = _calculatiofinal();
                                                            eduscore =150;
                                                            totalscore = _score();
                                                          });
                                                          Navigator.pop(context);
                                                        },
                                                        child: Padding(
                                                          padding:
                                                          const EdgeInsets.all(8.0),
                                                          child: Container(
                                                            height: 65,
                                                            width: 350,
                                                            child: Card(
                                                              elevation: 5,
                                                              margin: EdgeInsets.only(
                                                                  top: 3.0, bottom: 3.0),
                                                              color: Colors
                                                                  .greenAccent.shade100,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                  BorderRadius.circular(
                                                                      7.0)),
                                                              child: Center(
                                                                child: Text(
                                                                  "Doctoral level University degree (phd)",
                                                                  style: TextStyle(
                                                                      fontSize: 25),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            // educationvalue = 0.9;
                                                            // educationcentervalue = "23";
                                                            // totaleligibilityscore = _calculatiofinal();
                                                            eduscore =135;
                                                            totalscore = _score();
                                                          });
                                                          Navigator.pop(context);
                                                        },
                                                        child: Padding(
                                                          padding:
                                                          const EdgeInsets.all(8.0),
                                                          child: Container(
                                                            height: 65,
                                                            width: 350,
                                                            child: Card(
                                                              elevation: 5,
                                                              margin: EdgeInsets.only(
                                                                  top: 3.0, bottom: 3.0),
                                                              color: Colors
                                                                  .greenAccent.shade100,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                  BorderRadius.circular(
                                                                      7.0)),
                                                              child: Center(
                                                                child: Text(
                                                                  "Master Degree",
                                                                  style: TextStyle(
                                                                      fontSize: 25),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            // educationvalue = 0.8;
                                                            // educationcentervalue = "22";
                                                            // totaleligibilityscore = _calculatiofinal();
                                                            eduscore =128;
                                                            totalscore = _score();
                                                          });
                                                          Navigator.pop(context);
                                                        },
                                                        child: Padding(
                                                          padding:
                                                          const EdgeInsets.all(8.0),
                                                          child: Container(
                                                            height: 65,
                                                            width: 350,
                                                            child: Card(
                                                              elevation: 5,
                                                              margin: EdgeInsets.only(
                                                                  top: 3.0, bottom: 3.0),
                                                              color: Colors
                                                                  .greenAccent.shade100,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                  BorderRadius.circular(
                                                                      7.0)),
                                                              child: Center(
                                                                child: Text(
                                                                  "Two or More certificates, diplomas or degrees",
                                                                  style: TextStyle(
                                                                      fontSize: 25),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            // educationvalue = 0.7;
                                                            // educationcentervalue = "21";
                                                            // totaleligibilityscore = _calculatiofinal();
                                                            eduscore =120;
                                                            totalscore = _score();
                                                          });
                                                          Navigator.pop(context);
                                                        },
                                                        child: Padding(
                                                          padding:
                                                          const EdgeInsets.all(8.0),
                                                          child: Container(
                                                            height: 65,
                                                            width: 350,
                                                            child: Card(
                                                              elevation: 5,
                                                              margin: EdgeInsets.only(
                                                                  top: 3.0, bottom: 3.0),
                                                              color: Colors
                                                                  .greenAccent.shade100,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                  BorderRadius.circular(
                                                                      7.0)),
                                                              child: Center(
                                                                child: Text(
                                                                  "Bachelor degree or diploma for a \nprogram of three year",
                                                                  style: TextStyle(
                                                                      fontSize: 25),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            // educationvalue = 0.6;
                                                            // educationcentervalue = "19";
                                                            // totaleligibilityscore = _calculatiofinal();
                                                            eduscore =98;
                                                            totalscore = _score();
                                                          });
                                                          Navigator.pop(context);
                                                        },
                                                        child: Padding(
                                                          padding:
                                                          const EdgeInsets.all(8.0),
                                                          child: Container(
                                                            height: 65,
                                                            width: 350,
                                                            child: Card(
                                                              elevation: 5,
                                                              margin: EdgeInsets.only(
                                                                  top: 3.0, bottom: 3.0),
                                                              color: Colors
                                                                  .greenAccent.shade100,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                  BorderRadius.circular(
                                                                      7.0)),
                                                              child: Center(
                                                                child: Text(
                                                                  "Two year program at university, college",
                                                                  style: TextStyle(
                                                                      fontSize: 25),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            // educationvalue = 0.5;
                                                            // educationcentervalue = "15";
                                                            // totaleligibilityscore = _calculatiofinal();
                                                            eduscore =90;
                                                            totalscore = _score();
                                                          });
                                                          Navigator.pop(context);
                                                        },
                                                        child: Padding(
                                                          padding:
                                                          const EdgeInsets.all(8.0),
                                                          child: Container(
                                                            height: 65,
                                                            width: 350,
                                                            child: Card(
                                                              elevation: 5,
                                                              margin: EdgeInsets.only(
                                                                  top: 3.0, bottom: 3.0),
                                                              color: Colors
                                                                  .greenAccent.shade100,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                  BorderRadius.circular(
                                                                      7.0)),
                                                              child: Center(
                                                                child: Text(
                                                                  "One Year Program at a University, college",
                                                                  style: TextStyle(
                                                                      fontSize: 25),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            // educationvalue = 0.2;
                                                            // educationcentervalue = "5";
                                                            // totaleligibilityscore = _calculatiofinal();
                                                            eduscore =30;
                                                            totalscore = _score();
                                                          });
                                                          Navigator.pop(context);
                                                        },
                                                        child: Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Container(
                                                            height: 65,
                                                            width: 350,
                                                            child: Card(
                                                              elevation: 5,
                                                              margin: EdgeInsets.only(
                                                                  top: 3.0, bottom: 3.0),
                                                              color:
                                                              Colors.greenAccent.shade100,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                  BorderRadius.circular(
                                                                      7.0)),
                                                              child: Center(
                                                                child: Text(
                                                                  "Secondary diploma(high school graduation)",
                                                                  style:
                                                                  TextStyle(fontSize: 25),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            // educationvalue = 0.2;
                                                            // educationcentervalue = "5";
                                                            // totaleligibilityscore = _calculatiofinal();
                                                            eduscore =0;
                                                            totalscore = _score();
                                                          });
                                                          Navigator.pop(context);
                                                        },
                                                        child: Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Container(
                                                            height: 65,
                                                            width: 350,
                                                            child: Card(
                                                              elevation: 5,
                                                              margin: EdgeInsets.only(
                                                                  top: 3.0, bottom: 3.0),
                                                              color:
                                                              Colors.greenAccent.shade100,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                  BorderRadius.circular(
                                                                      7.0)),
                                                              child: Center(
                                                                child: Text(
                                                                  "None or less then Secondary (High school)",
                                                                  style:
                                                                  TextStyle(fontSize: 25),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                    ],
                                                  ),
                                                )

                                              ],
                                            ),
                                          );
                                        });
                                  },
                                child: Padding(
                                  padding: const EdgeInsets.only(left:10.0,right:10.0),
                                  child: Container(
                                    height: 200,
                                   // width: 190,
                                    width: MediaQuery.of(context).size.width*0.46,
                                   // color: Colors.black45,
                                    child:Card(
                                      elevation: 10,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                                      child: Column(
                                        children:<Widget>[
                                          Container(
                                            height: 120,
                                            // child:Card(
                                            //     elevation: 10,
                                            //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                                            // child: Container(
                                            margin: EdgeInsets.only(
                                                top: 10, bottom: 10, left: 20, right: 20),
                                            //  color: Colors.transparent,
                                            decoration: BoxDecoration(
                                              border: Border(bottom: BorderSide(color: Colors.black45)),
                                              color: Colors.transparent,
                                              image: new DecorationImage(
                                                  image: AssetImage("images/books.png")),
                                            ),
                                            //    ),
                                            // ),
                                          ),
                                          Container(
                                              height: 50,
                                             // width:180,
                                              //color: Colors.green,
                                              // child:Card(
                                              // elevation: 10,
                                              // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                                              child:Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children:<Widget>[
                                             // Padding(
                                             //   padding: const EdgeInsets.only(top:10.0),
                                                 Text("Education",style: TextStyle(fontSize: 20),),
                                             // ),
                                                  Text("$eduscore",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            // ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                ),



        InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>
                  Languagetest()));
        },



                                child: Container(
                                  height: 200,
                                 // width: 190,
                                  width: MediaQuery.of(context).size.width*0.46,
                                  child:Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                                    child: Column(
                                      children:<Widget>[
                                        Container(
                                          height: 120,
                                          // child:Card(
                                          //     elevation: 10,
                                          //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                                          // child: Container(
                                          margin: EdgeInsets.only(
                                              top: 10, bottom: 10, left: 20, right: 20),
                                          //  color: Colors.transparent,
                                          decoration: BoxDecoration(
                                            border: Border(bottom: BorderSide(color: Colors.black45)),
                                            color: Colors.transparent,
                                            image: new DecorationImage(
                                                image: AssetImage("images/test.png")),
                                          ),
                                          //    ),
                                          // ),
                                        ),
                                        Container(
                                            height: 50,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children:<Widget> [
                                            //width:180,
                                            //color: Colors.green,
                                            // child:Card(
                                            // elevation: 10,
                                            // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                                            //  Padding(
                                            //   padding: const EdgeInsets.only(top:10.0),
                                                Text("Language",style: TextStyle(fontSize: 20),),

                                                 Text(_accumulativelanguagescore().toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                                          //  )
                                              ],
                                            )
                                          // ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // color: Colors.green,
                                ),
    ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children:<Widget>[

                              InkWell(
                                      onTap: () {
                               Navigator.push(context,MaterialPageRoute(builder: (context)=>
                                   workexprience()));
                              // Navigator.of(context).push(new MaterialPageRoute(builder: (_)=> new workexprience()),).then((value) => value?_getRequest():null);
                              // _navigatoranddisplay(context);
                    },







                                child: Padding(
                                  padding: const EdgeInsets.only(left:10.0,right:10.0),
                                  child: Container(
                                    height: 200,
                                    width: MediaQuery.of(context).size.width*0.46,
                                   // width: 190,
                                    //color: Colors.black45,
                                    child:Card(
                                      elevation: 10,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                                      child: Column(
                                        children:<Widget>[
                                          Container(
                                            height: 120,
                                            // child:Card(
                                            //     elevation: 10,
                                            //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                                            // child: Container(
                                            margin: EdgeInsets.only(
                                                top: 10,
                                                bottom: 10,
                                                left: 20, right: 20),
                                            //  color: Colors.transparent,
                                            decoration: BoxDecoration(
                                              border: Border(bottom: BorderSide(color: Colors.black45)),
                                              color: Colors.transparent,
                                              image: new DecorationImage(
                                                  image: AssetImage("images/briefcase.png")),
                                            ),
                                            //    ),
                                            // ),
                                          ),
                                          Container(
                                              height: 50,
                                             // width:180,
                                              //color: Colors.green,
                                              // child:Card(
                                              // elevation: 10,
                                              // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                                              child:Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children:<Widget>[
                                               //Padding(
                                                //padding: const EdgeInsets.only(top:10.0),
                                                 Text("Work\nExperience",style: TextStyle(fontSize: 20),),
                                                 Text("$totalworkexprience",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                                             // )
                                                   ],
                                             ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),





                                InkWell(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            content: Stack(
                                              overflow: Overflow.visible,
                                              children: <Widget>[
                                                Container(
                                                  alignment: Alignment.center,
                                                  width: 300,
                                                  height: MediaQuery.of(context).size.height*0.45,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage("images/cig_background_new.jpg"),
                                                          fit: BoxFit.cover
                                                      )
                                                  ),
                                                  child:ListView(
                                                    scrollDirection: Axis.vertical,
                                                    children:<Widget>[
                                                      Column(
                                                        children: <Widget>[
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                // educationvalue = 1.0;
                                                                // educationcentervalue = "25";
                                                                // totaleligibilityscore = _calculatiofinal();
                                                                caneduscore =30;
                                                                totalscore = _score();
                                                              });
                                                              Navigator.pop(context);
                                                            },
                                                            child: Padding(
                                                              padding:
                                                              const EdgeInsets.all(8.0),
                                                              child: Container(
                                                                height: 65,
                                                                width: 350,
                                                                child: Card(
                                                                  elevation: 5,
                                                                  margin: EdgeInsets.only(
                                                                      top: 3.0, bottom: 3.0),
                                                                  color: Colors
                                                                      .greenAccent.shade100,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          7.0)),
                                                                  child: Center(
                                                                    child: Text(
                                                                      "Master Degree or professional degree needed to practice in a licensed profession",
                                                                      style: TextStyle(
                                                                          fontSize: 25),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                // educationvalue = 0.9;
                                                                // educationcentervalue = "23";
                                                                // totaleligibilityscore = _calculatiofinal();
                                                                caneduscore =30;
                                                                totalscore = _score();
                                                              });
                                                              Navigator.pop(context);
                                                            },
                                                            child: Padding(
                                                              padding:
                                                              const EdgeInsets.all(8.0),
                                                              child: Container(
                                                                height: 65,
                                                                width: 350,
                                                                child: Card(
                                                                  elevation: 5,
                                                                  margin: EdgeInsets.only(
                                                                      top: 3.0, bottom: 3.0),
                                                                  color: Colors
                                                                      .greenAccent.shade100,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          7.0)),
                                                                  child: Center(
                                                                    child: Text(
                                                                      "Three years or longer degree, diploma or certificate",
                                                                      style: TextStyle(
                                                                          fontSize: 25),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                // educationvalue = 0.8;
                                                                // educationcentervalue = "22";
                                                                // totaleligibilityscore = _calculatiofinal();
                                                                caneduscore =15;
                                                                totalscore = _score();
                                                              });
                                                              Navigator.pop(context);
                                                            },
                                                            child: Padding(
                                                              padding:
                                                              const EdgeInsets.all(8.0),
                                                              child: Container(
                                                                height: 65,
                                                                width: 350,
                                                                child: Card(
                                                                  elevation: 5,
                                                                  margin: EdgeInsets.only(
                                                                      top: 3.0, bottom: 3.0),
                                                                  color: Colors
                                                                      .greenAccent.shade100,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          7.0)),
                                                                  child: Center(
                                                                    child: Text(
                                                                      "One or Two degree or diploma or certificate",
                                                                      style: TextStyle(
                                                                          fontSize: 25),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                // educationvalue = 0.7;
                                                                // educationcentervalue = "21";
                                                                // totaleligibilityscore = _calculatiofinal();
                                                                caneduscore =0;
                                                                totalscore = _score();
                                                              });
                                                              Navigator.pop(context);
                                                            },
                                                            child: Padding(
                                                              padding:
                                                              const EdgeInsets.all(8.0),
                                                              child: Container(
                                                                height: 65,
                                                                width: 350,
                                                                child: Card(
                                                                  elevation: 5,
                                                                  margin: EdgeInsets.only(
                                                                      top: 3.0, bottom: 3.0),
                                                                  color: Colors
                                                                      .greenAccent.shade100,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          7.0)),
                                                                  child: Center(
                                                                    child: Text(
                                                                      "Secondary high school or none ",
                                                                      style: TextStyle(
                                                                          fontSize: 25),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),

                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                )

                                              ],
                                            ),
                                          );
                                        });
                                  },
                                child: Container(
                                  height: 200,
                                  //width: 190,
                                  width: MediaQuery.of(context).size.width*0.46,
                                  child:Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                                    child: Column(
                                      children:<Widget>[
                                        Container(
                                          height: 120,
                                          // child:Card(
                                          //     elevation: 10,
                                          //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                                          // child: Container(
                                          margin: EdgeInsets.only(
                                              top: 10, bottom: 10, left: 20, right: 20),
                                          //  color: Colors.transparent,
                                          decoration: BoxDecoration(
                                            border: Border(bottom: BorderSide(color: Colors.black45)),
                                            color: Colors.transparent,
                                            image: new DecorationImage(
                                                image: AssetImage("images/university-degree.png")),
                                          ),
                                          //    ),
                                          // ),
                                        ),
                                        Container(
                                            height: 50,
                                            //width:180,
                                         //   color: Colors.green,
                                            child:Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children:<Widget>[


                                              Text("Canadian\nEducation",style: TextStyle(fontSize: 20),),
                                                Text("$caneduscore",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

                                      ],
                                    )
                                        ),
                                      ],
                                    ),
                                  ),

                                  // color: Colors.green,
                                ),
                                ),
                              ],
                            ),

                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                                    additional_points()));
                              },


                              child:Stack(
                                children:<Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom:40.0),
                                child: Container(
                                  height: 140,
                                  // width: 190,
                                  width: MediaQuery.of(context).size.width*0.94,
                                  child:Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                                    child: Column(
                                      children:<Widget>[
                                        Container(
                                          height: 60,
                                          // child:Card(
                                          //     elevation: 10,
                                          //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                                          // child: Container(
                                          margin: EdgeInsets.only(
                                              top: 10, bottom: 10, left: 20, right: 20),
                                          //  color: Colors.transparent,
                                          decoration: BoxDecoration(
                                            border: Border(bottom: BorderSide(color: Colors.black45)),
                                            color: Colors.transparent,
                                            image: new DecorationImage(
                                                image: AssetImage("images/plus.png")),
                                          ),
                                          //    ),
                                          // ),
                                        ),
                                        Container(
                                            height: 50,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children:<Widget> [
                                                //width:180,
                                                //color: Colors.green,
                                                // child:Card(
                                                // elevation: 10,
                                                // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                                                //  Padding(
                                                //   padding: const EdgeInsets.only(top:10.0),
                                                Text("Additional points",style: TextStyle(fontSize: 20),),

                                                Text(additionalpoint().toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                                                //  )
                                              ],
                                            )
                                          // ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // color: Colors.green,
                                ),
                              ),


                                  Positioned(
                                    right: 0.0,
                                    //bottom: 1.0,
                                    top: 0.5,
                                    child:FloatingActionButton(
                                      backgroundColor: Colors.deepOrange,
                                      foregroundColor: Colors.black,
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) =>
                                            crsanalysis()));
                                      },child:Icon(Icons.insert_drive_file,color: Colors.white,),
                                    ),
                                  ),
                                ],
                              ),
                            ),






                    ],
                        ),
                          ],
                       ),
             //     ],
                    ),
                ),
           //   ),
          //   )
  ],
    ),
      ),

    );
  }

  void _navigatoranddisplay(BuildContext context)
    async{
      final result = await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => workexprience()),
      );

          // Scaffold.of(context)
          //   ..removeCurrentSnackBar()
          //   ..showSnackBar(SnackBar(content: Text("$result")));

      abc = result;
  //    );
  }
}
//

class crsanalysis extends StatefulWidget {
  @override
  _crsanalysisState createState() => _crsanalysisState();
}
int humanfactor = agescore+ eduscore +_accumulativelanguagescore()+ _canadianexprience();



class _crsanalysisState extends State<crsanalysis> {
  @override
  Widget build(BuildContext context) {
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
            children: <Widget>[

        Container(
        margin: EdgeInsets.only(top: 20, bottom: 5),
        height: 25,
        width: MediaQuery.of(context).size.width*0.45,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FlatButton.icon(
                  onPressed: () => {Navigator.pop(context)},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.teal,
                    size: 20,
                  ),
                  label: Text("")),
              Text(
                "CRS Analysis",
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ]
        ),

      ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:<Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("TOTAL",style: TextStyle(color: Colors.deepOrange,
                            fontSize: 25,
                            fontWeight: FontWeight.bold) ,),
                      ),
                  Row(
                    children:<Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:15.0,bottom:15.0),
                    child: Text(_score().toString(),style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold) ,),
                  ),
                      Padding(
                        padding: const EdgeInsets.only(top:15.0,bottom:15.0,right:8.0),
                        child: Text("/1200",style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold) ,),
                      ),
                ],
                  ),

                    ],
                  )
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                    elevation: 5,
                    shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child:Column(
                      children:<Widget>[
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("Core/Human Factor",style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold) ,),
                        ),
                        Row(
                          children:<Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top:15.0,bottom:15.0),
                              child: Text(humanfactor.toString(),style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold) ,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:15.0,bottom:15.0,right:8.0),
                              child: Text("/500",style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold) ,),
                            ),
                          ],

                        ),

                      ],
                    ),

                  Container(
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black45)),
                  )
                  ),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                  Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Age",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold) ,),
                ),
               Padding(
                 padding: const EdgeInsets.only(top:15.0,bottom: 15,right:8.0),
                 child: Text(agescore.toString(),style: TextStyle(
                     fontSize: 25,
                     fontWeight: FontWeight.bold) ,),
               ),

               //   ),
                      ],
                    ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text("Level Of Education",style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold) ,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:15.0,bottom: 15,right:8.0),
                              child: Text(eduscore.toString(),style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold) ,),
                            ),

                            //   ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text("Official Languages",style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold) ,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:15.0,bottom: 15,right:8.0),
                              child: Text(_accumulativelanguagescore().toString(),style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold) ,),
                            ),

                            //   ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text("Canadian Work Exprience",style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold) ,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:15.0,bottom: 15,right:8.0),
                              child: Text(_canadianexprience().toString(),style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold) ,),
                            ),

                            //   ),
                          ],
                        )
                    ],
                ),
              ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child:Column(
                    children:<Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget>[
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text("Skill Transferability"
                                "\n Factors",style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold) ,),
                          ),
                          Row(
                            children:<Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top:15.0,bottom:15.0),
                                child: Text(_skilltransfervalue().toString(),style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold) ,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:15.0,bottom:15.0,right:8.0),
                                child: Text("/100",style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold) ,),
                              ),
                            ],

                          ),

                        ],
                      ),

                      Container(
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.black45)),
                          )
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget>[
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text("Education",style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold) ,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:15.0,bottom: 15,right:8.0),
                            child: Text(caneduscore.toString(),style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold) ,),
                          ),

                          //   ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget>[
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text("Foreign Work Exprience",style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold) ,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:15.0,bottom: 15,right:8.0),
                            child: Text(foreignexprience().toString(),style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold) ,),
                          ),

                          //   ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget>[
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text("Certificate of Qualification",style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold) ,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:15.0,bottom: 15,right:8.0),
                            child: Text(qualificationcertificate.toString(),style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold) ,),
                          ),

                          //   ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child:Column(
                    children:<Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget>[
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text("Additional Points",style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold) ,),
                          ),
                          Row(
                            children:<Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top:15.0,bottom:15.0),
                                child: Text(_additionalvalue().toString(),style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold) ,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:15.0,bottom:15.0,right:8.0),
                                child: Text("/600",style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold) ,),
                              ),
                            ],

                          ),

                        ],
                      ),

                      Container(
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.black45)),
                          )
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget>[
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text("provincial Nomination",style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold) ,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:15.0,bottom: 15,right:8.0),
                            child: Text(nominationpoints.toString(),style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold) ,),
                          ),

                          //   ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget>[
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text("LMIA Job Offer",style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold) ,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:15.0,bottom: 15,right:8.0),
                            child: Text(lmiapoint().toString(),style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold) ,),
                          ),

                          //   ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget>[
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text("Sibblings In Canada",style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold) ,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:15.0,bottom: 15,right:8.0),
                            child: Text(relationpoints.toString(),style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold) ,),
                          ),

                          //   ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget>[
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text("French Language Skills",style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold) ,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:15.0,bottom: 15,right:8.0),
                            child: Text(_frenchlanguagetestscore().toString(),style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold) ,),
                          ),

                          //   ),
                        ],
                      )
                    ],
                  ),
                ),
              ),

      ],
        ),
      ),

    );
  }

}


class additional_points extends StatefulWidget {
  @override
  _additional_pointsState createState() => _additional_pointsState();
}

class _additional_pointsState extends State<additional_points> {
  @override
  Widget build(BuildContext context) {
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
            children: <Widget>[

        Container(
        margin: EdgeInsets.only(top: 20, bottom: 5),
        height: 25,
        width: MediaQuery.of(context).size.width*0.45,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FlatButton.icon(
                  onPressed: () => {Navigator.pop(context)},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.teal,
                    size: 20,
                  ),
                  label: Text("")),
              Text(
                "Additional Points",
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ]
        ),

      ),
              Container(
                alignment: Alignment.center,
                child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0,bottom: 15,left: 25,right: 15),
                    child: Center(
                      child: RichText(text: new TextSpan(
                          text: "Do you have a Labour Market"
                              " Assesment (LMIA)",
                          style: TextStyle(
                              fontSize: 22, color: Colors.black,fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            new TextSpan(text: " job offer",
                                style: TextStyle(color: Colors.deepOrange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),)

                          ])
                      ),
                    ),
                  ),


                  // CheckboxListTile(
                  //   title: Text("title list"),
                  //   value: checkedvalue,
                  //   onChanged: (newValue){
                  //     setState(() {
                  //       checkedvalue = newValue;
                  //     });
                  //
                  //   },
                  //   controlAffinity: ListTileControlAffinity.leading,
                  // )

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:<Widget>[
                      SizedBox(width: 10,),
                      Text("NOC-oo",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      Checkbox(
                      //  checkColor: Colors.blue,
                        value: valuefirst,
                        onChanged: (bool value){
                          setState(() {
                            valuefirst = value;
                            valuesecond =false;
                            noc00 = 50;
                            totalscore = _score();
                          });
                        },

                      ),
                      Text("NOC-o/A/B",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      Checkbox(
                       // checkColor: Colors.blue,
                        value: valuesecond,
                        onChanged: (bool value){
                          setState(() {
                            valuesecond = value;
                            valuefirst = false;
                            noc0a =20;
                            totalscore = _score();
                          });
                        },

                      )

                    ],
                  ),
                Padding(
                  padding: const EdgeInsets.only(top:40.0,bottom: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        SizedBox(width: 10,),
                        Text("Do you have a real/step brother or sister"
                            " \nliving in canada who is citizen or "
                            " \npermanent resident of canada",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                        Checkbox(
                          //  checkColor: Colors.blue,
                          value: relationvalue,
                          onChanged: (bool value){
                            setState(() {
                              relationvalue =value;
                              relationpoints =15;
                              totalscore = _score();
                            });
                          },

                        ),
            ],
                  ),
                ),

                  Padding(
                    padding: const EdgeInsets.only(top:20.0,bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        SizedBox(width: 10,),
                        Text("Do you have a letter of nomination "
                            " \nfrom a province "
                            " \nor territory",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                        Checkbox(
                          //  checkColor: Colors.blue,
                          value: nominationvalue,
                          onChanged: (bool value){
                            setState(() {
                              nominationvalue =value;
                              nominationpoints=600;
                              totalscore = _score();
                            });
                          },

                        ),
                      ],
                    ),
                  ),

                  Center(
                    child:Container(
                      height: 85,
                      width: MediaQuery.of(context).size.width*0.6,

                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: MaterialButton(
                          onPressed: () => {
                            Navigator.pop(context)
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                                child: Text("Done",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25))),
                          ),
                          color: Colors.deepOrange,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ),
                    ),
                  ),


                ]
              ),
              )

  ],
        ),
      ),
    );
  }
}



class workexprience extends StatefulWidget {
  @override
  _workexprienceState createState() => _workexprienceState();
}

class _workexprienceState extends State<workexprience> {
  @override
  Widget build(BuildContext context) {
     return
    //   AlertDialog(
     // content: Stack(
      //  overflow: Overflow.visible,
        Scaffold(
          body: Container(
       alignment: Alignment.center,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/cig_background_new.jpg"),
                    fit: BoxFit.cover
                )
            ),
     // decoration: BoxDecoration(image: DecorationImage(image:AssetImage("images/workexppic.png")) ),

      //    child: ListView(
      //      scrollDirection: Axis.vertical,
      //    children: <Widget>[
      // children: <Widget>[
          // Container(
          //   width:MediaQuery.of(context).size.width,
          //   height: MediaQuery.of(context).size.height,
          //   decoration: BoxDecoration(color: Colors.white.withOpacity(0.5)),

          child:Container(
            alignment: Alignment.center,
            width: 300,
           // width:MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.5,
              decoration: BoxDecoration(color: Colors.amber.withOpacity(0.2)),

            child:ListView(
              scrollDirection: Axis.vertical,
              children:<Widget>[
                Column(
                  children: <Widget>[
                    Text("Canadian Work Experience",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,fontFamily: 'DavidLibre'),),
                    Slider(value: currentslidervalue,min: 0,max: 5,divisions: 5,label: currentslidervalue.round().toString()+ "Years", onChanged:  (double value) {
                      setState(() {
                        currentslidervalue = value;
                        totalworkexprience = _workexpriencescore();
                        totalscore = _score();
                      });
                    },),
                    Text("Foreign Work Experience",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,fontFamily: 'DavidLibre'),),
                    Slider(value: foreignslidervalue,min: 0,max: 3,divisions: 3,label: foreignslidervalue.round().toString()+ "Years", onChanged:  (double value) {
                      setState(() {
                        foreignslidervalue = value;
                        totalworkexprience = _workexpriencescore();
                        totalscore = _score();
                      });
                    },),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Container(
                          height:MediaQuery.of(context).size.height*0.2,
                          width: MediaQuery.of(context).size.width*0.4,
                          child:Text("Do you have a certificate of qualification from a Canadian province ot territory?"),
                        ),

                        Checkbox(value: checkedvalue,checkColor: Colors.green,activeColor: Colors.yellowAccent, onChanged: (bool value){setState(() {
                          checkedvalue =value;
                          qualificationcertificate =50;
                          totalworkexprience = _workexpriencescore();
                          totalscore = _score();
                        });}),


                      ],
                    ),
                    RaisedButton(child: Text("Go Back"),onPressed:(){ Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                crscalci()));},color: Colors.deepOrange,)
                  ],
                ),
              ],
            ),
          ),
  // ),
   //     ],
    ),
         );
          //  );

  //  );

  }
}

class Languagetest extends StatefulWidget {
  @override
  _LanguagetestState createState() => _LanguagetestState();
}

class _LanguagetestState extends State<Languagetest> {
  @override
  Widget build(BuildContext context) {
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
          children: <Widget>[

            Container(
            margin: EdgeInsets.only(top: 20, bottom: 5),
            height: 25,
            width: MediaQuery.of(context).size.width*0.45,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                FlatButton.icon(
                onPressed: () => {Navigator.pop(context)},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.teal,
              size: 20,
            ),
            label: Text("")),
          Text(
            "Select Language Test",
            style: TextStyle(
                color: Colors.teal,
                fontSize: 17,
                fontWeight: FontWeight.bold),
          ),
          ]
        ),

        ),
            Container(
              child: Column(
                children:<Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Text("Select English Language",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  ),

                  Row(
                    children:<Widget>[
                      GestureDetector(
                        onTap: (){
                        setState(() {
                        checkedvalue = true;
                        checkvalue =false;
                        languagename = "IELTS";
                        });
                        },
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left:40.0,top: 20.0),
                          child: Container(
                            height: 50,
                            width: 150,
                            //color: Colors.black,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.0),
                              border: Border.all(color: Colors.lightBlue,width: 3.0),
                              color: checkedvalue?Colors.lightBlue:Colors.transparent,

                            ),

                            child: Center(child: Text("IELTS",style: TextStyle(fontSize: 25,color: checkedvalue?Colors.white:Colors.lightBlue),)),

                          ),
                        ),
                      ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            checkedvalue = false;
                            checkvalue= true;
                            languagename = "CELPIP";
                          });
                        },
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left:20.0,top: 20.0),
                          child: Container(
                            height: 50,
                            width: 150,
                            //color: Colors.black,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.0),
                                border: Border.all(color: Colors.lightBlue,width: 3.0),
                                  color: checkvalue?Colors.lightBlue:Colors.transparent,),


                            child: Center(child: Text("CELPIP",style: TextStyle(fontSize: 25,color: checkvalue?Colors.white: Colors.lightBlue),)),
                          ),
                        ),
                      )
                      // Card(
                      //
                      // )
                      ),
                    ],
                  ),
   // ),


                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Padding(
                      padding: const EdgeInsets.only(top:40.0),
                      child: Text("Select French Language",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Row(
                    children:<Widget>[

                      GestureDetector(
                        onTap: (){
                          setState(() {
                            navalue = true;
                            tcfvalue =false;
                            tefvalue = false;
                            frenchlanguagename = "French";

                          });
                        },
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left:40.0,top: 20.0),
                          child: Container(
                            height: 50,
                            width: 300,
                            //color: Colors.black,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.0),
                                border: Border.all(color: Colors.lightBlue,width: 3.0),
                              color:navalue?Colors.lightBlue:Colors.transparent,
                            ),

                            child: Center(child: Text("Not Applicable",style: TextStyle(fontSize: 25,color:navalue?Colors.white:Colors.lightBlue),)),
                          ),
                        ),
                      ),
                      ),
                      // Center(
                      //   child: Padding(
                      //     padding: const EdgeInsets.only(left:20.0,top: 20.0),
                      //     child: Container(
                      //       height: 50,
                      //       width: 150,
                      //       //color: Colors.black,
                      //       decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(14.0),
                      //           border: Border.all(color: Colors.lightBlue,width: 3.0)
                      //       ),
                      //
                      //       child: Center(child: Text("CELPIP",style: TextStyle(fontSize: 25,color: Colors.lightBlue),)),
                      //     ),
                      //   ),
                      // )
                      // Card(
                      //
                      // )
                    ],
                  ),
                  Row(
                    children:<Widget>[
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            navalue = false;
                            tcfvalue =false;
                            tefvalue = true;
                            frenchlanguagename = "TEF";

                          });
                        },
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left:40.0,top: 20.0),
                          child: Container(
                            height: 50,
                            width: 150,
                            //color: Colors.black,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.0),
                                border: Border.all(color: Colors.lightBlue,width: 3.0),
                              color:tefvalue?Colors.lightBlue:Colors.transparent,
                            ),

                            child: Center(child: Text("TEF",style: TextStyle(fontSize: 25,color:tefvalue?Colors.white:Colors.lightBlue),)),
                          ),
                        ),
                      ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            navalue = false;
                            tcfvalue =true;
                            tefvalue = false;
                            frenchlanguagename = "TCF";

                          });
                        },
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left:20.0,top: 20.0),
                          child: Container(
                            height: 50,
                            width: 150,
                            //color: Colors.black,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.0),
                                border: Border.all(color: Colors.lightBlue,width: 3.0),
                              color:tcfvalue?Colors.lightBlue:Colors.transparent,
                            ),

                            child: Center(child: Text("TCF",style: TextStyle(fontSize: 25,color:tcfvalue?Colors.white:Colors.lightBlue),)),
                          ),
                        ),
                      ),
                      ),
                      // Card(
                      //
                      // )
                    ],
                  )
                ],
              )

            ),
      InkWell(
        onTap: ()

        {   if(checkedvalue == true || checkvalue == true && navalue == true || tcfvalue == true || tefvalue == true){

          Navigator.push(context, MaterialPageRoute(builder: (context) =>
              languagescore()));
        }
        //  else
        //       {
        //          final snackbar= SnackBar(content: Text("unchosen item"),duration: Duration(seconds: 5),elevation: 5);
        //             Scaffold.of(context).showSnackBar(snackbar);
        // }
        },

           child: Padding(
               padding: const EdgeInsets.only(top:80.0,left: 300),
              child:Container(
               // color: Colors.black,
                child:
                Text("Next>>>",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),
            ),
      ),
    ],
        ),


    ),


    );
  }
}


class languagescore extends StatefulWidget {
  @override
  _languagescoreState createState() => _languagescoreState();
}

class _languagescoreState extends State<languagescore> {
  @override
  Widget build(BuildContext context) {
    if(frenchlanguagename == "French") {
      accumulativelanguagescore =_accumulativelanguagescore();
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
              children: <Widget>[

                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 5),
                  height: 25,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.45,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FlatButton.icon(
                            onPressed: () => {Navigator.pop(context)},
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.teal,
                              size: 20,
                            ),
                            label: Text("")),
                        Text(
                          "Language Test Score",
                          style: TextStyle(
                              color: Colors.teal,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left:38.0),
                          child:Text(_accumulativelanguagescore().toString(),style: TextStyle(
                              color: Colors.teal,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),),
                        )
                      ]
                  ),


                ),
               // if(frenchlanguagename == "French")
                  Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0,bottom: 15),
                          child: Center(
                            child: RichText(text: new TextSpan(
                                text: languagename,
                                style: TextStyle(color: Colors.deepOrange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                                children: <TextSpan>[
                                  new TextSpan(text: " Language Score",
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.black))
                                ])
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top:15.0),
                          child: Text("CLB SCORE: $slidervalue",style: TextStyle(fontSize: 30, color: Colors.black),),
                        ),

                        Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(

                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.70,

                              child: Slider(value: slidervalue,
                                min: 0,
                                max: 10,
                                divisions: 20,
                                activeColor: Colors.teal,
                                inactiveColor: Colors.grey,
                                label: slidervalue.toString(),
                                onChanged: (value) {
                                  setState(() {
                                    slidervalue = value;
                                    totalscore = _score();
                                  });
                                },
                              ),
                            )
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: Center(
                            child: RichText(text: new TextSpan(
                                text: frenchlanguagename,
                                style: TextStyle(color: Colors.deepOrange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                                children: <TextSpan>[
                                  new TextSpan(text: " Language Score",
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.black))
                                ])
                            ),
                          ),
                        ),

                        Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.70,

                              child: Slider(
                               value: frenchvalue,
                                min: 0,
                                max: 10,
                                divisions: 20,
                              //  activeColor: Colors.lightBlue[200],
                                inactiveColor: Colors.grey,
                                label: frenchvalue.toString(),
                                // onChanged: (value) {
                                //   setState(() {
                                //     frenchvalue = value;
                                //   });
                                // },
                              ),
                            )
                        ),

                        Center(
                          child:Container(
                            height: 85,
                            width: MediaQuery.of(context).size.width*0.6,

                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: MaterialButton(
                              onPressed: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            crscalci()))
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                    child: Text("Done",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25))),
                              ),
                              color: Colors.deepOrange,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                          ),
    ),
                        ),

                      ],
                    ),
                  ),


              ]
          ),
        ),

      );
    }
    else{
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
              children: <Widget>[

                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 5),
                  height: 25,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.45,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FlatButton.icon(
                            onPressed: () => {Navigator.pop(context)},
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.teal,
                              size: 20,
                            ),
                            label: Text("")),
                        Text(
                          "Language Test Score",
                          style: TextStyle(
                              color: Colors.teal,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left:38.0),
                          child:Text(_accumulativelanguagescore().toString(),style: TextStyle(
                              color: Colors.teal,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),),
                        )
                      ]
                  ),


                ),
              //  if(frenchlanguagename == "French")
                  Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0,bottom: 15),
                          child: Center(
                            child: RichText(text: new TextSpan(
                                text: languagename,
                                style: TextStyle(color: Colors.deepOrange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                                children: <TextSpan>[
                                  new TextSpan(text: " Language Score",
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.black))
                                ])
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top:15.0),
                          child: Text("CLB SCORE: $slidervalue",style: TextStyle(fontSize: 30, color: Colors.black),),
                        ),

                        Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(

                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.70,

                              child: Slider(value: slidervalue,
                                min: 0,
                                max: 10,
                                divisions: 20,
                                activeColor: Colors.teal,
                                inactiveColor: Colors.grey,
                                label: slidervalue.toString(),
                                onChanged: (value) {
                                  setState(() {
                                    slidervalue = value;

                                    totalscore = _score();
                                  });
                                },
                              ),
                            )
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 40.0,bottom: 15),
                          child: Center(
                            child: RichText(text: new TextSpan(
                                text: frenchlanguagename,
                                style: TextStyle(color: Colors.deepOrange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                                children: <TextSpan>[
                                  new TextSpan(text: " Language Score",
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.black))
                                ])
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top:15.0),
                          child: Text("CLB SCORE: $frenchvalue",style: TextStyle(fontSize: 30, color: Colors.black),),
                        ),

                        Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.70,

                              child: Slider(
                                value: frenchvalue,
                                min: 0,
                                max: 10,
                                divisions: 20,
                                activeColor: Colors.lightBlue[200],
                                inactiveColor: Colors.grey,
                                label: frenchvalue.toString(),
                                onChanged: (value) {
                                  setState(() {
                                    frenchvalue = value;
                                    totalscore = _score();
                                  });
                                },
                              ),
                            )
                        ),
                        Center(
                          child:Container(
                            height: 85,
                            width: MediaQuery.of(context).size.width*0.6,

                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: MaterialButton(
                                onPressed: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              crscalci()))
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Center(
                                      child: Text("Done",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25))),
                                ),
                                color: Colors.deepOrange,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),


              ]
          ),
        ),

      );

    };

  }
}




_calculateage(){
var age1 =0;


}


int _englishlanguagetestscore(){
  if(slidervalue >=4 && slidervalue < 6){
    englishlanguagescore =6;
  }
  else if(slidervalue == 6 || slidervalue ==6.5){
    englishlanguagescore =9;
  }
  else if(slidervalue == 7 || slidervalue ==7.5){
    englishlanguagescore =17;
  }
  else if(slidervalue == 8 || slidervalue ==8.5){
    englishlanguagescore =22;
  }
  else if(slidervalue == 9 || slidervalue ==9.5){
    englishlanguagescore =29;
  }
  else if(slidervalue == 10){
    englishlanguagescore =32;
  }
  return englishlanguagescore;
}

int _frenchlanguagetestscore(){
  if(frenchvalue >=4 && frenchvalue <= 5){
    frenchlanguagescore =6;
  }
  else if(frenchvalue == 6 || frenchvalue ==6.5){
    frenchlanguagescore =9;
  }
  else if(frenchvalue == 7 || frenchvalue ==7.5){
    frenchlanguagescore =17;
  }
  else if(frenchvalue == 8 || frenchvalue ==8.5){
    frenchlanguagescore =22;
  }
  else if(frenchvalue == 9 || frenchvalue ==9.5){
    frenchlanguagescore =29;
  }
  else if(frenchvalue == 10){
    frenchlanguagescore =32;
  }
  return frenchlanguagescore;
}

int _accumulativelanguagescore(){
  // accumulativelanguagescore =0;
   accumulativelanguagescore = _frenchlanguagetestscore()+_englishlanguagetestscore();
  return accumulativelanguagescore;
}
int lmiapoint(){
  lmiapoint1 = noc00+noc0a;
  return lmiapoint1;
}
int additionalpoint(){
  additionalpoint1 =0;
  additionalpoint1 = noc00 + noc0a + relationpoints + nominationpoints;
  return additionalpoint1;
}

int _canadianexprience(){
  if(currentslidervalue == 1){
    canadianworkexprience =40;
  }
  else if(currentslidervalue == 2){
    canadianworkexprience= 53;
  }
  else if(currentslidervalue == 3){
    canadianworkexprience= 64;
  }
  else if(currentslidervalue == 4){
    canadianworkexprience =72;}
    else if(currentslidervalue ==5){
      canadianworkexprience =80;}
      else{
       canadianworkexprience = 0;
      }
      return canadianworkexprience;

}

int foreignexprience(){
  if(foreignslidervalue== 1){
    foreignworkexprience = 13;
  }
  else if(foreignslidervalue==2){
    foreignworkexprience = 13;
  }
  else if(foreignslidervalue==3){
    foreignworkexprience = 25;
  }
  else{foreignworkexprience = 0;}
  return foreignworkexprience;
}

int _workexpriencescore(){
  totalworkexprience =0;
  totalworkexprience= _canadianexprience()+foreignexprience() + qualificationcertificate;
  return totalworkexprience;
}

int _score(){
 totalscore=0;
 totalscore = totalscore+agescore+eduscore+caneduscore+_workexpriencescore()+_accumulativelanguagescore()+additionalpoint();
// totalscore = totalscore+agescore+eduscore+caneduscore+abc;
  return totalscore;
}

 _language_name(){
  if(checkedvalue == true ){
    return Text("IELTS");
  }
  else {
    return Text("TCPIP");
  }
}


_skilltransfervalue(){
  if(skilltransfer >100){
    skilltransfer =100;
  }
  return skilltransfer;
}

_additionalvalue(){
  if(additional >600){
    additional =600;
  }
  return additional;
}


// class _HomePageState extends State<HomePage> {
//   double _fontSize = 20.0;
//
//   void _showFontSizePickerDialog() async {
//     // <-- note the async keyword here
//
//     // this will contain the result from Navigator.pop(context, result)
//     final selectedFontSize = await showDialog<double>(
//       context: context,
//       builder: (context) => FontSizePickerDialog(initialFontSize: _fontSize),
//     );
//
//     // execution of this code continues when the dialog was closed (popped)
//
//     // note that the result can also be null, so check it
//     // (back button or pressed outside of the dialog)
//     if (selectedFontSize != null) {
//       setState(() {
//         _fontSize = selectedFontSize;
//       });
//     }
//   }
