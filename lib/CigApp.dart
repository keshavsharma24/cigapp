// ignore: avoid_web_libraries_in_flutter
//import 'dart:html';

import 'package:cigapp/books.dart';
import 'package:cigapp/crscalci.dart';
import 'package:cigapp/pnp.dart';
import 'package:cigapp/students.dart';
import 'package:cigapp/settings.dart';
import 'package:cigapp/trends.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

//import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:percent_indicator/percent_indicator.dart';

var agevalue = 0.0;
var agecentervalue = "0";
var educationvalue = 0.0;
var educationcentervalue = "0";
double languagepercentagevalue =0.0;
var workexpriencevalue = 0.0;
var workexpriencecentervalue = "0";
var arrangedemploymentvalue =0.0;
var arrangedemploymentcenter ="0";
var adaptabilityvalue=0.0;
var adaptabilitycentervalue ="0";
bool isSwitched = false;
bool isSwitch = false;
bool isswitch = false;
bool isswitched = false;


var totaleligibilityscore=0;


bool checkedvalue1 =false;
bool checkvalue1= false;
bool tefvalue1 = false;
bool tcfvalue1 =false;
bool navalue1 = false;
String languagename1;
String frenchlanguagename1;
double slidervalue1 =0;
double frenchvalue1 =0;
int englishlanguagescore1 =0;
int frenchlanguagescore1 =0;
int accumulativelanguagescore1 = 0;

bool Homeselected =false;
bool Ebookselected =false;
bool settingsselected =false;


class CigApp extends StatefulWidget {
  @override
  _CigAppState createState() => _CigAppState();
}

class _CigAppState extends State<CigApp> {

  int _index =0;

  @override
  Widget build(BuildContext context) {

    // Widget child;
    // switch (_index){
    //   case 0:
    //     child = Navigator.push(context, MaterialPageRoute(builder: (context)=> CigApp())) as Widget;
    // break ;
    //
    //   case 1:
    //     child = Navigator.push(context, MaterialPageRoute(builder: (context)=> books())) as Widget;
    //     break;
    //
    //   case 2:
    //     child = Navigator.push(context, MaterialPageRoute(builder: (context)=> setting())) as Widget;
    //     break;
    // }

    List<Widget> _widgetOptions = <Widget>[

    ];
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("C.I.G."),
      // ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/cig_background_new.jpg"),
                fit: BoxFit.cover
            )
        ),
        alignment: Alignment.center,
        child: ListView(scrollDirection: Axis.vertical, children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            height: 80,
            child: Container(
              //elevation: 5,
              //shape: RoundedRectangleBorder(
              //    borderRadius: BorderRadius.circular(20.5)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Canada Immigration Guide",
                    style: TextStyle(
                      fontFamily: 'DancingScript',
                      fontSize: 30,
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
            ),
            //child: Text("",style: TextStyle(fontSize: 18,color: Colors.amberAccent),),
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height*0.15,
                  width: MediaQuery.of(context).size.width,
                //  color: Colors.black,
                  child: InkWell(
                    // Container(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => where_to_begin()));
                    },

                    child: Padding(
                      padding: const EdgeInsets.only(left: 130.0,right: 130),
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.15,
                       // width: 70,
                       // color: Colors.black,
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          backgroundImage: AssetImage("images/start1.jpg"),
                          radius: 60.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top:20.0),
                      child: Text(
                  "Where to begin?",
                  style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'DavidLibre'),
                ),
                    )),

                SizedBox(
                    height:30,
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.15,
                  width: MediaQuery.of(context).size.width,
                 // color:Colors.black,
                  child: Stack(
                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Positioned(
                        top: -2,
                      left: 20,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => calculations()));
                          },
                          child: Container(
                              height: 140,
                              width: 140,
                              child: Card(
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                elevation: 5,
                                margin: EdgeInsets.all(20),

                                //width: 50,
                                //decoration: BoxDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                                color: Colors.redAccent.shade100,
                                child: Container(
                                  margin: EdgeInsets.only(
                                      top: 10, bottom: 10, left: 20, right: 20),
                                  //  color: Colors.transparent,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    image: new DecorationImage(
                                        image:
                                            AssetImage("images/calculatornew.png")),
                                  ),
                                ),
                                //child:Image.asset("images/calci34567.jpg",cacheHeight: 80,cacheWidth: 60,)
                              )),
                        ),
                      ),

                      Positioned(
                        top: -2,
                        right: 20,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => pnpsuggestion()));
                          },
                        child: Container(
                            height: 140,
                            width: 140,
                            child: Card(
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                elevation: 5,
                                margin: EdgeInsets.all(20),

                                //width: 50,
                                //decoration: BoxDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                                color: Colors.teal.shade900,
                                child: Container(
                                  //  height: 80,
                                  //  width: 60,
                                  margin: EdgeInsets.only(
                                      top: 10, bottom: 10, left: 20, right: 20),
                                  //  color: Colors.transparent,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    image: new DecorationImage(
                                        image: AssetImage("images/bulb.png")),
                                  ),
                                )
                                // child:Image.asset("images/bulb.png",cacheHeight: 80,cacheWidth: 60,)

                                )),
                        ),
                      ),

                      //child: Text("calculators"),

                      // Container(
                      //   height: 50,
                      //   width: 50,
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(15.0),
                      //     color: Colors.indigo.shade300,
                      //     image: new DecorationImage(image: AssetImage("images/bulb.png")),
                      //
                      //   ),
                      //   child: Text("PNP Suggestion"),
                      // )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.04,
                 // color: Colors.black,
                  child: Stack(
                 //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      //Spacer(flex: 1,),

                      Positioned(
                        top: 5,
                        left : 22,
                        child: Text("\t \tCalculations",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'DavidLibre',
                            )),
                      ),
                      Positioned(
                        top: 10,
                        right: 20,
                        child: Text("PNP Suggestions",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                            fontFamily: 'DavidLibre')),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                Container(
                  height: MediaQuery.of(context).size.height*0.15,
                  width: MediaQuery.of(context).size.width,
                 // color: Colors.black,
                  child: Stack(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                       Positioned(
                         top: -5,
                        left: 20,
                      child:InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => pools()));
                        },

                          child: Container(
                              height: 140,
                              width: 140,
                              child: Card(
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                elevation: 5,
                                margin: EdgeInsets.all(20),

                                //width: 50,
                                //decoration: BoxDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                                color: Colors.teal.shade200,
                                child: Container(
                                  margin: EdgeInsets.only(
                                      top: 10, bottom: 10, left: 20, right: 20),
                                  //  color: Colors.transparent,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    image: new DecorationImage(
                                        image:
                                        AssetImage("images/trend.png")),
                                  ),
                                ),
                                //child:Image.asset("images/calci34567.jpg",cacheHeight: 80,cacheWidth: 60,)
                              )),
                        ),
                      ),

                      Positioned(
                        top: -5,
                        right: 20,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => students()));
                          },
                          child: Container(
                              height: 140,
                              width: 140,
                              child: Card(
                                  semanticContainer: true,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  elevation: 5,
                                  margin: EdgeInsets.all(20),

                                  //width: 50,
                                  //decoration: BoxDecoration(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0)),
                                  color: Colors.amber.shade700,
                                  child: Container(
                                    //  height: 80,
                                    //  width: 60,
                                    margin: EdgeInsets.only(
                                        top: 10, bottom: 10, left: 20, right: 20),
                                    //  color: Colors.transparent,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      image: new DecorationImage(
                                          image: AssetImage("images/reading.png")),
                                    ),
                                  )
                                // child:Image.asset("images/bulb.png",cacheHeight: 80,cacheWidth: 60,)

                              )),
                        ),
                      ),


                    ],
                  ),
                ),


                Container(
                  height: MediaQuery.of(context).size.height*0.04,
                  width: MediaQuery.of(context).size.width,
                 // color: Colors.black,
                  child: Stack(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      //Spacer(flex: 1,),

                      Positioned(
                        left:38,
                        child: Text("\t \t   Pools",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'DavidLibre',
                            )),
                      ),
                      Positioned(
                        right: 27,
                        child: Text("Students Help",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'DavidLibre')),
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),

        ]),

      ),
      bottomNavigationBar:
      BottomNavigationBar(
          onTap: (_index){
            setState(() {
              if (_index ==0){
                Homeselected = true;
                Ebookselected =false;
                settingsselected=false;
                Navigator.push(context, MaterialPageRoute(builder: (context)=> CigApp()));
              }
              else if(_index ==1){
                Ebookselected =true;
                Homeselected=false;
                settingsselected=false;
                Navigator.push(context, MaterialPageRoute(builder: (context)=> books()));
              }
              else if(_index ==2) {
                settingsselected =true;
                Homeselected =false;
                Ebookselected =false;
                Navigator.push(context, MaterialPageRoute(builder: (context)=> setting()));
              }
            });
          },
          currentIndex: _index,
          selectedItemColor: Colors.deepOrangeAccent.shade200,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("Home")),
            BottomNavigationBarItem(icon: Icon(Icons.library_books),title: Text("E-Book")),
            BottomNavigationBarItem(icon: Icon(Icons.settings),title: Text("Settings")),
          ],
        ),
    );
  }
}

class where_to_begin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            height: 25,
            width: 20,
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
                  "Where To begin..",
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            //alignment: MainAxisAlignment.,
            // child: Text("Where To begin.."),)
          ),
          Container(
            margin: EdgeInsets.all(30),
            child: Text(
              "Even with so much information and free content available about \n \n CANADA IMMIGRATION, most of us get stuck where to start?\n \n To solve this we have made in depth content ahead which will help you navigate with the immigration process",
              style: TextStyle(fontSize: 23, fontFamily: 'DavidLibre'),
            ),
          ),
          SizedBox(
            width: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: RaisedButton(
              onPressed: () => {Navigator.push(context,MaterialPageRoute(builder: (context) =>
              books())),
              },

              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                    child: Text("continue".toUpperCase(),
                        style: TextStyle(color: Colors.white, fontSize: 25,fontFamily: 'DavidLibre'))),
              ),
              color: Colors.deepOrangeAccent.shade200,
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
          )
        ],
      ),
    ));
  }
}

class calculations extends StatefulWidget {
  @override
  _calculationsState createState() => _calculationsState();
}

class _calculationsState extends State<calculations> {
  @override
  Widget build(BuildContext context) {
    var _index=0;
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/cig_background_new.jpg"),
                  fit: BoxFit.cover
              )
          ),
      alignment: Alignment.center,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            height: 25,
            width: 20,
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
                  "What's the score..",
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            //alignment: MainAxisAlignment.,
            // child: Text("Where To begin.."),)
          ),
          Column(
            children: [
              Container(
                 // height: 250,
                  height: MediaQuery.of(context).size.height*0.35,
                 // width: 350,
                  width: MediaQuery.of(context).size.width*0.9,
                  child: Card(
                    elevation: 5,
                  // color: Colors.transparent,
                   // margin: EdgeInsets.all(5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Stack(
                     // crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Positioned(
                          top:0,
                          left: 143,
                          //child: Center(
                              child: Text(
                            "\n STEP 1",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                        //  )
                      ),
                        ),
                        Positioned(
                          top: 45,
                            left: 30,
                            child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "Eligibility Calculator",
                            style: TextStyle(
                                color: Colors.deepOrangeAccent, fontSize: 30),
                          ),
                        )),
                        Positioned(
                          top: 105,
                            left:60,
                            child: Text(
                          "Are you Eligible to Apply",
                          style: TextStyle(fontSize: 21),
                        )),

                      Positioned(
                          top: 130,
                          left:95,
                      child: Text(
                        " for Canada PR?",
                        style: TextStyle(fontSize: 21),
                      )),
                        // Center(
                        Positioned(
                          top: 180,
                          left:15,
                            //padding: const EdgeInsets.all(15.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.06,
                              width:  MediaQuery.of(context).size.height*0.38,
                              child: RaisedButton(
                                onPressed: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              eligiblitycalci()))
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Center(
                                      child: Text("calculate Now".toUpperCase(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25))),
                                ),
                                color: Colors.indigo.shade300,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                            ),
                          ),
                        // ),
                      ],
                    ),
                  )),
              Container(
                 // height: 250,
                  height: MediaQuery.of(context).size.height*0.35,
                  //width: 350,
                  width: MediaQuery.of(context).size.width*0.9,
                  child: Card(
                    elevation: 5,
                    margin: EdgeInsets.all(5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Stack(
                     // crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Positioned(
                          top:25,
                            left: 143,
                            child: Text(
                          "STEP 2",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        )),
                        Positioned(
                            top: 55,
                            left: 60,
                            child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "CRS Calculator",
                            style: TextStyle(
                                color: Colors.deepOrangeAccent, fontSize: 30),
                          ),
                        )),
                        Positioned(
                            top: 115,
                            left: 85,
                            child: Text(
                          "This score will get",
                          style: TextStyle(fontSize: 21),
                        )),

                        Positioned(
                            top: 140,
                            left: 115,
                            child: Text(
                              "you THE ITA",
                              style: TextStyle(fontSize: 21),
                            )),
                        Positioned(
                          top: 180,
                          left: 15,
                          child: Container(
                           // padding: const EdgeInsets.all(15.0),
                            height: MediaQuery.of(context).size.height*0.06,
                            width:  MediaQuery.of(context).size.height*0.38,
                            child: RaisedButton(
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
                                    child: Text("calculate Now".toUpperCase(),
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25))),
                              ),
                              color: Colors.indigo.shade300,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          )
        ],
      ),
    ),
        bottomNavigationBar:
        BottomNavigationBar(
        onTap: (_index){
          setState(() {
        if (_index ==0){
          Homeselected = true;
          Ebookselected = false;
          settingsselected =false;
          Navigator.push(context, MaterialPageRoute(builder: (context)=> CigApp()));
        }
        else if(_index ==1){
          Ebookselected =true;
          Homeselected =false;
          Navigator.push(context, MaterialPageRoute(builder: (context)=> books()));
        }
        else if(_index ==2){
          settingsselected =true;
          Homeselected =false;
          Ebookselected =false;
          Navigator.push(context, MaterialPageRoute(builder: (context)=> setting()));
        }
      });
    },
    currentIndex: _index=0,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.deepOrangeAccent.shade200,
    items: [
    BottomNavigationBarItem(icon: Icon(Icons.home,),title: Text("Home")),
    BottomNavigationBarItem(icon: Icon(Icons.library_books,),title: Text("E-Book")),
    BottomNavigationBarItem(icon: Icon(Icons.settings,),title: Text("Settings")),
    ],
    ),
    );
  }
}

class eligiblitycalci extends StatefulWidget {
  @override
  _eligiblitycalciState createState() => _eligiblitycalciState();

}

class _eligiblitycalciState extends State<eligiblitycalci> {


  @override
  Widget build(BuildContext context) {
    var _index =0;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/cig_background_new.jpg"),
                fit: BoxFit.cover
            )
        ),
        alignment: Alignment.center,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              height: 25,
              width: 20,
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
                    "Your Eligibility Score",
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              //alignment: MainAxisAlignment.,
              // child: Text("Where To begin.."),)
            ),
            Container(
              alignment: Alignment.center,
              //color: Colors.black45,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
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
                                      //color: Colors.black45,
                                      //height: 100,
                                     // width: 300,
                                      width: MediaQuery.of(context).size.width*0.8,
                                      child: Column(
                                        children: <Widget>[
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                agevalue = 1.0;
                                                agecentervalue = "12";
                                                totaleligibilityscore = _calculatiofinal();
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
                                                agevalue = 0.9;
                                                agecentervalue = "11";
                                                totaleligibilityscore = _calculatiofinal();
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
                                                agevalue = 0.8;
                                                agecentervalue = "10";
                                                totaleligibilityscore = _calculatiofinal();
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
                                                agevalue = 0.7;
                                                agecentervalue = "9";
                                                totaleligibilityscore = _calculatiofinal();
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
                                                agevalue = 0.6;
                                                agecentervalue = "8";
                                                totaleligibilityscore = _calculatiofinal();
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
                                                agevalue = 0.5;
                                                agecentervalue = "7";
                                                totaleligibilityscore = _calculatiofinal();
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
                                                agevalue = 0.4;
                                                agecentervalue = "6";
                                                totaleligibilityscore = _calculatiofinal();
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
                                                agevalue = 0.3;
                                                agecentervalue = "5";
                                                totaleligibilityscore = _calculatiofinal();
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
                                                agevalue = 0.35;
                                                agecentervalue = "4";
                                                totaleligibilityscore = _calculatiofinal();
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
                                                agevalue = 0.3;
                                                agecentervalue = "3";
                                                totaleligibilityscore = _calculatiofinal();
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
                                                agevalue = 0.2;
                                                agecentervalue = "2";
                                                totaleligibilityscore = _calculatiofinal();
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
                                                agevalue = 0.1;
                                                agecentervalue = "1";
                                                totaleligibilityscore = _calculatiofinal();
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
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            });
                      },
                      child: Container(
                        height: 180,
                       // width: 120,
                        width: MediaQuery.of(context).size.width*0.29,
                        child: Card(
                          elevation: 5,

                          // elevation: 15,
                          // color: Colors.deepOrange,
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 120,
                                  width: 100,
                                  //color: Colors.green,
                                  //child: Card(
                                  //color: Colors.pinkAccent.shade100,
                                  // elevation:5,
                                  //   shape: RoundedRectangleBorder(
                                  //       borderRadius: BorderRadius.circular(15.0)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircularPercentIndicator(
                                      radius: 80,
                                      backgroundColor: Colors.blue.shade900,
                                      progressColor: Colors.cyan.shade300,
                                      // valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                                      // strokeWidth: 10.0,
                                      lineWidth: 10.0,
                                      percent: agevalue,
                                      center: Text(
                                        agecentervalue,
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      animation: true,
                                      animationDuration: 1200,
                                    ),
                                  )),
                              // ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Age",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],

                            // children: [
                            //   Text("age"),
                            // ],
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
                                      //width: 300,
                                      width: MediaQuery.of(context).size.width*0.8,
                                      child: Column(
                                        children: <Widget>[
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                educationvalue = 1.0;
                                                educationcentervalue = "25";
                                                totaleligibilityscore = _calculatiofinal();
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
                                                educationvalue = 0.9;
                                                educationcentervalue = "23";
                                                totaleligibilityscore = _calculatiofinal();
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
                                                educationvalue = 0.8;
                                                educationcentervalue = "22";
                                                totaleligibilityscore = _calculatiofinal();
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
                                                educationvalue = 0.7;
                                                educationcentervalue = "21";
                                                totaleligibilityscore = _calculatiofinal();
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
                                                educationvalue = 0.6;
                                                educationcentervalue = "19";
                                                totaleligibilityscore = _calculatiofinal();
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
                                                educationvalue = 0.5;
                                                educationcentervalue = "15";
                                                totaleligibilityscore = _calculatiofinal();
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
                                                educationvalue = 0.2;
                                                educationcentervalue = "5";
                                                totaleligibilityscore = _calculatiofinal();
                                              });
                                              Navigator.pop(context);
                                            },
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
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 180,
                          //width: 120,
                          width: MediaQuery.of(context).size.width*0.29,
                          child: Card(
                            elevation: 5,

                            // elevation: 15,
                            // color: Colors.deepOrange,
                            child: Column(
                              children: <Widget>[
                                Container(
                                    height: 120,
                                    width: 100,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CircularPercentIndicator(
                                        radius: 80,
                                        backgroundColor: Colors.blue.shade900,
                                        progressColor: Colors.cyan.shade300,
                                        // valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                                        // strokeWidth: 10.0,
                                        lineWidth: 10.0,
                                        percent: educationvalue,
                                        center: Text(
                                          educationcentervalue,
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        animation: true,
                                        animationDuration: 1200,
                                      ),
                                    )),
                                // ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Education",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],

                              // children: [
                              //   Text("age"),
                              // ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>
                            Languagetest1()));
                      },
                    child: Padding(
                      padding: const EdgeInsets.only(top:8.0,bottom: 8.0,left: 1.0),
                      child: Container(
                        height: 180,
                        //width: 120,
                        width: MediaQuery.of(context).size.width*0.29,
                        child: Card(
                          elevation: 5,

                          // elevation: 15,
                          // color: Colors.deepOrange,

                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 120,
                                  width: MediaQuery.of(context).size.width*0.29,
                               //   width: 100,
                                  //color: Colors.green,
                                  //child: Card(
                                  //color: Colors.pinkAccent.shade100,
                                  // elevation:5,
                                  //   shape: RoundedRectangleBorder(
                                  //       borderRadius: BorderRadius.circular(15.0)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircularPercentIndicator(
                                      radius: 80,
                                      backgroundColor: Colors.blue.shade900,
                                      progressColor: Colors.cyan.shade300,
                                      // valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                                      // strokeWidth: 10.0,
                                      lineWidth: 10.0,
                                      percent: languagepercentagevalue,
                                      center: Text(
                                        _accumulativelanguagescore1().toString(),
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      animation: true,
                                      animationDuration: 1200,
                                    ),
                                  )),
                              // ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Language \n Proficiency",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],

                            // children: [
                            //   Text("age"),
                            // ],
                          ),
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
              ),
              //color: Colors.teal,
            ),
            Container(
            //  color: Colors.black,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.27,
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
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
                                      height: 450,
                                      width: 300,
                                      child: Column(
                                        children: <Widget>[
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                workexpriencevalue = 0.0;
                                                workexpriencecentervalue = "0";
                                                // totaleligibilityscore =
                                                //     totaleligibilityscore +
                                                //         int.parse(
                                                //             workexpriencecentervalue);
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
                                                      "No Experience",
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
                                                workexpriencevalue = 0.7;
                                                workexpriencecentervalue = "9";
                                                totaleligibilityscore =
                                                    _calculatiofinal();
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
                                                      "1 Year",
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
                                                workexpriencevalue = 0.8;
                                                workexpriencecentervalue = "11";
                                                totaleligibilityscore = _calculatiofinal();
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
                                                      "2or3Years",
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
                                                workexpriencevalue = 0.9;
                                                workexpriencecentervalue = "13";
                                                totaleligibilityscore = _calculatiofinal();
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
                                                      "4or5Years",
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
                                                workexpriencevalue = 1.0;
                                                workexpriencecentervalue = "15";
                                                totaleligibilityscore = _calculatiofinal();

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
                                                      "6 or More Years",
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
                                    )
                                  ],
                                ),
                              );
                            });
                      },
                      child: Container(
                        height: 180,
                        width: 120,
                        child: Card(
                          elevation: 5,

                          // elevation: 15,
                          // color: Colors.deepOrange,
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 120,
                                 // width: 100,
                                  width: MediaQuery.of(context).size.width*0.29,
                                  //color: Colors.green,
                                  //child: Card(
                                  //color: Colors.pinkAccent.shade100,
                                  // elevation:5,
                                  //   shape: RoundedRectangleBorder(
                                  //       borderRadius: BorderRadius.circular(15.0)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircularPercentIndicator(
                                      radius: 80,
                                      backgroundColor: Colors.blue.shade900,
                                      progressColor: Colors.cyan.shade300,
                                      // valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                                      // strokeWidth: 10.0,
                                      lineWidth: 10.0,
                                      percent: workexpriencevalue,
                                      center: Text(
                                        workexpriencecentervalue,
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      animation: true,
                                      animationDuration: 1200,
                                    ),
                                  )),
                              // ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Work \nExperience",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],

                            // children: [
                            //   Text("age"),
                            // ],
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
                                      height: 250,
                                      width: 300,
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            "Do You have Arranged Employment",
                                            style: TextStyle(fontSize: 20,
                                                fontWeight: FontWeight.bold),),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                arrangedemploymentvalue = 0.0;
                                                arrangedemploymentcenter = "0";
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
                                                  //margin: EdgeInsets.only(
                                                  //  top: 3.0, bottom: 3.0),
                                                  color: Colors
                                                      .amber,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          7.0)),
                                                  child: Center(
                                                    child: Text(
                                                      "NO",
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
                                                arrangedemploymentvalue = 1.0;
                                                arrangedemploymentcenter = "10";
                                                totaleligibilityscore = _calculatiofinal();
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
                                                  color: Colors.amber,

                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          7.0)),
                                                  child: Center(
                                                    child: Text(
                                                      "YES",
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
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 180,
                         // width: 120,
                          width: MediaQuery.of(context).size.width*0.29,
                          child: Card(
                            elevation: 5,

                            // elevation: 15,
                            // color: Colors.deepOrange,
                            child: Column(
                              children: <Widget>[
                                Container(
                                    height: 120,
                                    width: 100,
                                    //color: Colors.green,
                                    //child: Card(
                                    //color: Colors.pinkAccent.shade100,
                                    // elevation:5,
                                    //   shape: RoundedRectangleBorder(
                                    //       borderRadius: BorderRadius.circular(15.0)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CircularPercentIndicator(
                                        radius: 80,
                                        backgroundColor: Colors.blue.shade900,
                                        progressColor: Colors.cyan.shade300,
                                        // valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                                        // strokeWidth: 10.0,
                                        lineWidth: 10.0,
                                        percent: arrangedemploymentvalue,
                                        center: Text(
                                          arrangedemploymentcenter,
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        animation: true,
                                        animationDuration: 1200,
                                      ),
                                    )),
                                // ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Arranged \nEmployment",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>
                          adaptabilityclass()));
                    },

                    child: Padding(
                      padding: const EdgeInsets.only(left: 1.0,top: 8.0,bottom: 8.0),
                      child: Container(
                        height: 180,
                        //width: 120,
                        width: MediaQuery.of(context).size.width*0.29,
                        child: Card(
                          elevation: 5,

                          // elevation: 15,
                          // color: Colors.deepOrange,
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 120,
                                  width: MediaQuery.of(context).size.width*0.29,
                                //  width: 100,
                                //  color: Colors.green,
                                  //child: Card(
                                  //color: Colors.pinkAccent.shade100,
                                  // elevation:5,
                                  //   shape: RoundedRectangleBorder(
                                  //       borderRadius: BorderRadius.circular(15.0)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircularPercentIndicator(
                                      radius: 80,
                                      backgroundColor: Colors.blue.shade900,
                                      progressColor: Colors.cyan.shade300,
                                      // valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                                      // strokeWidth: 10.0,
                                      lineWidth: 10.0,
                                      percent: adaptabilityvalue,
                                      center: Text(
                                        adaptabilitycentervalue,
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      animation: true,
                                      animationDuration: 1200,
                                    ),
                                  )),
                              // ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Adaptability",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],

                            // children: [
                            //   Text("age"),
                            // ],
                          ),
                        ),
                      ),
                    ),
                ),
                  ],
                ),
              ),
              // color: Colors.teal,
            ),


            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("Your Eligibility Score", style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            "$totaleligibilityscore", style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber),),

                        ),
                        Container(
                          child: Text("/100", style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),

                  ),
                  //Text("$totaleligibilityscore/100",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:15.0),
              child: Container(height:80,width: 50,
              child:Padding(
                padding: const EdgeInsets.only(left: 35,right: 35),
                child: RaisedButton(onPressed: (){
                  if(totaleligibilityscore < 67){
                      showDialog(
                      context: context,
                      builder: (BuildContext context)
                      {
                        return AlertDialog(
                          content: Stack(
                            overflow: Overflow.visible,
                            children: <Widget>[
                              Container(
                                //height:200,
                               // width: 180,
                                height: MediaQuery.of(context).size.height*0.27,
                                width: MediaQuery.of(context).size.width*0.7,
                                alignment: Alignment.center,
                                color: Colors.transparent,
                                child:Column(
                                  children:<Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(child: Text("Sorry! you are not eligible",style: TextStyle(fontSize: 20,),)),
                                ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(child: Text("min points reqd. for Express Entry is 67",style: TextStyle(fontSize: 17,color: Colors.cyan),)),
                                  ),
                                  Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Container(height: 60,width: 150,


                                      child:RaisedButton(onPressed: (){Navigator.pop(context);},child:Text("Go Back",style: TextStyle(fontSize: 15),),color:Colors.amber,
                                          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10) ,))
                                    ),
                                  ),
                                  ),
                      ],
                                ),
                              )
                            ],
                          ),
                        );
                      });

                  }
                  else{
                    showDialog(
                        context: context,
                        builder: (BuildContext context)
                        {
                          return AlertDialog(
                            content: Stack(
                              overflow: Overflow.visible,
                              children: <Widget>[
                                Container(
                                  //height:200,
                                  height: MediaQuery.of(context).size.height*0.28,
                                 // width: 200,
                                  width: MediaQuery.of(context).size.width*0.7,
                                  alignment: Alignment.center,
                                  child:Column(
                                    children:<Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Congratulations",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.deepOrange),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("You are eligible for Express Entry!",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.amber),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Container(height: 60,width: 150,

                                      child:RaisedButton(onPressed: (){Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context)=>
                                              crscalci()));
                                      },child:Text("Count CRS points",style: TextStyle(fontSize: 15),),color:Colors.amber,
                                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10) ,)),
                                      ),
                                    ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        });
                  }
                },

                child:Text("Check if you are eligible?",style:TextStyle(fontSize: 18),),color: Colors.amber,elevation: 5,shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10) ),),
              ),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar:
      BottomNavigationBar(
        onTap: (_index){
          setState(() {
            if (_index ==0){
              Homeselected = true;
              Ebookselected = false;
              settingsselected =false;
              Navigator.push(context, MaterialPageRoute(builder: (context)=> CigApp()));
            }
            else if(_index ==1){
              Ebookselected =true;
              Homeselected =false;
              Navigator.push(context, MaterialPageRoute(builder: (context)=> books()));
            }
            else if(_index ==2){
              settingsselected =true;
              Homeselected =false;
              Ebookselected =false;
              Navigator.push(context, MaterialPageRoute(builder: (context)=> setting()));
            }
          });
        },
        currentIndex: _index =0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepOrangeAccent.shade200,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,),title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.library_books,),title: Text("E-Book")),
          BottomNavigationBarItem(icon: Icon(Icons.settings,),title: Text("Settings")),
        ],
      ),
    );
  }
}

class adaptabilityclass extends StatefulWidget {
  @override
  _adaptabilityclassState createState() => _adaptabilityclassState();
}

class _adaptabilityclassState extends State<adaptabilityclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          children:<Widget>[
            // showDialog(
            //     context: context,
            //     builder: (BuildContext context) {
            //       return AlertDialog(
            //         content: Stack(
            //           overflow: Overflow.visible,
            //           children: <Widget>[
                        // ListView(
                        //   scrollDirection: Axis.vertical,
                        // children<Widget>[

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
                      "Adaptability",
                      style: TextStyle(
                          color: Colors.teal,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ]
              ),

            ),
                        Container(
                          alignment: Alignment.center,
                          height: 700,
                          width: 300,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(40.0),
                                child: Text(
                                  "Select your valid options",
                                  style: TextStyle(fontSize: 20,
                                      fontWeight: FontWeight.bold),),
                              ),
                              // Container(
                              //   height: 700,
                              //   width: 300,
                              //
                              // child: ListView(
                              //   scrollDirection: Axis.vertical,
                              //   children:<Widget>[

                              InkWell(
                                // onTap: () {
                                //    setState(() {
                                //      arrangedemploymentvalue = 0.0;
                                //      arrangedemploymentcenter = "0";
                                //    });
                                //    Navigator.pop(context);
                                // },

                                // child: ListView(
                                //     scrollDirection: Axis.vertical,
                                // children:<Widget> [
                                child: Column(
                                    children:<Widget>[
                                      Card(
                                        elevation:5,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(
                                                7.0)),
                                        child:Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children:<Widget> [


                                            Container(
                                              height: 80,
                                              width: 210,
                                              //  child:Card(
                                              //   elevation: 5,
                                              margin: EdgeInsets.only(
                                                  top: 3.0, bottom: 3.0),
                                              // color: Colors
                                              //     .amber,

                                              child: Center(
                                                child: Text(
                                                  "Your spouse partner's Language test greater then CLB4",
                                                  style: TextStyle(
                                                      fontSize: 20),
                                                ),
                                              ),
                                              //   ),
                                            ),
                                            Semantics(
                                              child:Container(
                                                height: 80,
                                                width: 60,
                                                // child:Center(
                                                child: Switch(value: isSwitched, onChanged: (value){
                                                  setState(() {
                                                    isSwitched = value;
                                                    _adaptability1();
                                                    _adaptability2();
                                                    totaleligibilityscore = _calculatiofinal();


                                                  });

                                                },
                                                  activeTrackColor: Colors.amber,
                                                  activeColor: Colors.green,

                                                ),
                                                //   )
                                              ),
                                            ),


                                          ],
                                        ),
                                      ),
                                      Card(
                                        elevation:5,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(
                                                7.0)),
                                        child:Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children:<Widget> [


                                            Container(
                                              height: 80,
                                              width: 210,
                                              //  child:Card(
                                              //   elevation: 5,
                                              margin: EdgeInsets.only(
                                                  top: 3.0, bottom: 3.0),
                                              // color: Colors
                                              //     .amber,

                                              child: Center(
                                                child: Text(
                                                  "Your past studies in canada at least 2 years full time",
                                                  style: TextStyle(
                                                      fontSize: 20),
                                                ),
                                              ),
                                              //   ),
                                            ),
                                            Semantics(
                                              child:Container(
                                                height: 80,
                                                width: 60,
                                                // child:Center(
                                                child: Switch(value: isSwitch, onChanged: (value){
                                                  setState(() {
                                                    isSwitch = value;
                                                    _adaptability1();
                                                    _adaptability2();
                                                    totaleligibilityscore = _calculatiofinal();


                                                  });

                                                },
                                                    activeTrackColor: Colors.amber,
                                                    activeColor: Colors.green,
                                                    dragStartBehavior:DragStartBehavior.start

                                                ),
                                                //   )
                                              ),
                                            ),


                                          ],
                                        ),
                                      ),
                                      Card(
                                        elevation:5,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(
                                                7.0)),
                                        child:Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children:<Widget> [


                                            Container(
                                              height: 80,
                                              width: 210,
                                              //  child:Card(
                                              //   elevation: 5,
                                              margin: EdgeInsets.only(
                                                  top: 3.0, bottom: 3.0),
                                              // color: Colors
                                              //     .amber,

                                              child: Center(
                                                child: Text(
                                                  "Your past work experience in canada of at least one year",
                                                  style: TextStyle(
                                                      fontSize: 20),
                                                ),
                                              ),
                                              //   ),
                                            ),
                                            Semantics(
                                              child:Container(
                                                height: 80,
                                                width: 60,
                                                // child:Center(
                                                child: Switch(value: isswitch, onChanged: (value){
                                                  setState(() {
                                                    isswitch = value;
                                                    _adaptability1();
                                                    _adaptability2();
                                                    totaleligibilityscore = _calculatiofinal();


                                                  });

                                                },
                                                    activeTrackColor: Colors.amber,
                                                    activeColor: Colors.green,
                                                    dragStartBehavior:DragStartBehavior.start

                                                ),
                                                //   )
                                              ),
                                            ),


                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom:15.0),
                                        child: Card(
                                          elevation:5,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  7.0)),
                                          child:Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children:<Widget> [


                                              Container(
                                                height: 80,
                                                width: 210,
                                                //  child:Card(
                                                //   elevation: 5,
                                                margin: EdgeInsets.only(
                                                    top: 3.0, bottom: 3.0),
                                                // color: Colors
                                                //     .amber,

                                                child: Center(
                                                  child: Text(
                                                    "Blood relatives in canada",
                                                    style: TextStyle(
                                                        fontSize: 20),
                                                  ),
                                                ),
                                                //   ),
                                              ),
                                              Semantics(
                                                child:Container(
                                                  height: 80,
                                                  width: 60,
                                                  // child:Center(
                                                  child: Switch(value: isswitched, onChanged: (value){
                                                    setState(() {
                                                      isswitched = value;
                                                      _adaptability1();
                                                      _adaptability2();
                                                      totaleligibilityscore = _calculatiofinal();
                                                      //  _colorchange();


                                                    });

                                                  },
                                                      activeTrackColor: Colors.amber,
                                                      activeColor: Colors.green,
                                                      dragStartBehavior:DragStartBehavior.start

                                                  ),
                                                  //   )
                                                ),
                                              ),




                                            ],
                                          ),
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
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            eligiblitycalci()))
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



                                // ],
                                //   ),


                              ),
                              //     ],
                              // ),
                              // ),
                            ],
                          ),
                        ),


                        // ],
                        //    ),
                //       ],
                //     ),
                //   );
                // });
        ],
        ),
      ),
    );
  }
}


class Languagetest1 extends StatefulWidget {
  @override
  _Languagetest1State createState() => _Languagetest1State();
}

class _Languagetest1State extends State<Languagetest1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
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
                              checkedvalue1 = true;
                              checkvalue1 =false;
                              languagename1 = "IELTS";
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
                                  color: checkedvalue1?Colors.lightBlue:Colors.transparent,

                                ),

                                child: Center(child: Text("IELTS",style: TextStyle(fontSize: 25,color: checkedvalue1?Colors.white:Colors.lightBlue),)),

                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                            onTap: (){
                              setState(() {
                                checkedvalue1 = false;
                                checkvalue1= true;
                                languagename1 = "CELPIP";
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
                                    color: checkvalue1?Colors.lightBlue:Colors.transparent,),


                                  child: Center(child: Text("CELPIP",style: TextStyle(fontSize: 25,color: checkvalue1?Colors.white: Colors.lightBlue),)),
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
                    // Row(
                    //   children:<Widget>[
                    //     Center(
                    //       child: Padding(
                    //         padding: const EdgeInsets.only(left:40.0,top: 20.0),
                    //         child: Container(
                    //           height: 50,
                    //           width: 150,
                    //           //color: Colors.black,
                    //           decoration: BoxDecoration(
                    //               borderRadius: BorderRadius.circular(14.0),
                    //               border: Border.all(color: Colors.lightBlue,width: 3.0)
                    //           ),
                    //
                    //           child: Center(child: Text("TEF",style: TextStyle(fontSize: 25,color: Colors.lightBlue),)),
                    //         ),
                    //       ),
                    //     ),
                    //     Center(
                    //       child: Padding(
                    //         padding: const EdgeInsets.only(left:20.0,top: 20.0),
                    //         child: Container(
                    //           height: 50,
                    //           width: 150,
                    //           //color: Colors.black,
                    //           decoration: BoxDecoration(
                    //               borderRadius: BorderRadius.circular(14.0),
                    //               border: Border.all(color: Colors.lightBlue,width: 3.0)
                    //           ),
                    //
                    //           child: Center(child: Text("TCF",style: TextStyle(fontSize: 25,color: Colors.lightBlue),)),
                    //         ),
                    //       ),
                    //     )
                    //     // Card(
                    //     //
                    //     // )
                    //   ],
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
                              navalue1 = true;
                              tcfvalue1 =false;
                              tefvalue1 = false;
                              frenchlanguagename1 = "French";

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
                                  color:navalue1?Colors.lightBlue:Colors.transparent,
                                ),

                                child: Center(child: Text("Not Applicable",style: TextStyle(fontSize: 25,color:navalue1?Colors.white:Colors.lightBlue),)),
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
                              navalue1 = false;
                              tcfvalue1 =false;
                              tefvalue1 = true;
                              frenchlanguagename1 = "TEF";

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
                                  color:tefvalue1?Colors.lightBlue:Colors.transparent,
                                ),

                                child: Center(child: Text("TEF",style: TextStyle(fontSize: 25,color:tefvalue1?Colors.white:Colors.lightBlue),)),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              navalue1 = false;
                              tcfvalue1 =true;
                              tefvalue1 = false;
                              frenchlanguagename1 = "TCF";

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
                                  color:tcfvalue1?Colors.lightBlue:Colors.transparent,
                                ),

                                child: Center(child: Text("TCF",style: TextStyle(fontSize: 25,color:tcfvalue1?Colors.white:Colors.lightBlue),)),
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

              {   if(checkedvalue1 == true || checkvalue1 == true && navalue1 == true || tcfvalue1 == true || tefvalue1 == true){

                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    languagescore1()));
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


class languagescore1 extends StatefulWidget {
  @override
  _languagescore1State createState() => _languagescore1State();
}

class _languagescore1State extends State<languagescore1> {
  @override
  Widget build(BuildContext context) {
    if(frenchlanguagename1 == "French") {
      accumulativelanguagescore1 =_accumulativelanguagescore1();
      return Scaffold(
        body: Container(
          alignment: Alignment.center,
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
                          child:Text(_accumulativelanguagescore1().toString(),style: TextStyle(
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
                              text: languagename1,
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
                        child: Text("CLB SCORE: $slidervalue1",style: TextStyle(fontSize: 30, color: Colors.black),),
                      ),

                      Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(

                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.70,

                            child: Slider(value: slidervalue1,
                              min: 0,
                              max: 10,
                              divisions: 20,
                              activeColor: Colors.teal,
                              inactiveColor: Colors.grey,
                              label: slidervalue1.toString(),
                              onChanged: (value) {
                                setState(() {
                                  slidervalue1 = value;
                                  totaleligibilityscore = _calculatiofinal();
                                });
                              },
                            ),
                          )
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Center(
                          child: RichText(text: new TextSpan(
                              text: frenchlanguagename1,
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
                              value: frenchvalue1,
                              min: 0,
                              max: 10,
                              divisions: 20,
                              //  activeColor: Colors.lightBlue[200],
                              inactiveColor: Colors.grey,
                              //label: frenchvalue1.toString(),
                              // onChanged: (value) {
                              //   setState(() {
                              //     frenchvalue1 = value;
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
                                            eligiblitycalci()))
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
                          child:Text(_accumulativelanguagescore1().toString(),style: TextStyle(
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
                              text: languagename1,
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
                        child: Text("CLB SCORE: $slidervalue1",style: TextStyle(fontSize: 30, color: Colors.black),),
                      ),

                      Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(

                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.70,

                            child: Slider(value: slidervalue1,
                              min: 0,
                              max: 10,
                              divisions: 20,
                              activeColor: Colors.teal,
                              inactiveColor: Colors.grey,
                              label: slidervalue1.toString(),
                              onChanged: (value) {
                                setState(() {
                                  slidervalue1 = value;
                                  totaleligibilityscore = _calculatiofinal();
                                });
                              },
                            ),
                          )
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 40.0,bottom: 15),
                        child: Center(
                          child: RichText(text: new TextSpan(
                              text: frenchlanguagename1,
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
                        child: Text("CLB SCORE: $frenchvalue1",style: TextStyle(fontSize: 30, color: Colors.black),),
                      ),

                      Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.70,

                            child: Slider(
                              value: frenchvalue1,
                              min: 0,
                              max: 10,
                              divisions: 20,
                              activeColor: Colors.lightBlue[200],
                              inactiveColor: Colors.grey,
                              label: frenchvalue1.toString(),
                              onChanged: (value) {
                                setState(() {
                                  frenchvalue1 = value;
                                  totaleligibilityscore = _calculatiofinal();
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
                                            eligiblitycalci()))
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



int _englishlanguagetestscore1(){
  if(slidervalue1 >=4 && slidervalue1 < 6){
    englishlanguagescore1 =6;
    languagepercentagevalue = 0.1;

  }
  else if(slidervalue1 == 6 || slidervalue1 ==6.5){
    englishlanguagescore1 =9;
    languagepercentagevalue =0.2;

  }
  else if(slidervalue1 == 7 || slidervalue1 ==7.5){
    englishlanguagescore1 =17;
    languagepercentagevalue= 0.3;

  }
  else if(slidervalue1 == 8 || slidervalue1 ==8.5){
    englishlanguagescore1 =22;
     languagepercentagevalue = 0.4;
  }
  else if(slidervalue1 == 9 || slidervalue1 ==9.5){
    englishlanguagescore1 =29;
    languagepercentagevalue =0.5;

  }
  else if(slidervalue1 == 10){
    englishlanguagescore1 =32;
    languagepercentagevalue =1.0;

  }
  return englishlanguagescore1;
 // return languagepercentagevalue;
}

int _frenchlanguagetestscore1(){
  if(frenchvalue1 >=4 && frenchvalue1 <= 5){
    frenchlanguagescore1 =6;
   // languagepercentagevalue =0.1;

  }
  else if(frenchvalue1 == 6 || frenchvalue1 ==6.5){
    frenchlanguagescore1 =9;
    //languagepercentagevalue =0.2;
  }
  else if(frenchvalue1 == 7 || frenchvalue1 ==7.5){
    frenchlanguagescore1 =17;
    //languagepercentagevalue =0.3;
  }
  else if(frenchvalue1 == 8 || frenchvalue1 ==8.5){
    frenchlanguagescore1 =22;
   // languagepercentagevalue =0.8;
  }
  else if(frenchvalue1 == 9 || frenchvalue1 ==9.5){
    frenchlanguagescore1 =29;
   // languagepercentagevalue =0.9;
  }
  else if(frenchvalue1 == 10){
    frenchlanguagescore1 =32;
    //languagepercentagevalue =1.0;
  }
  return frenchlanguagescore1;
}

int _accumulativelanguagescore1() {
  // accumulativelanguagescore =0;
  accumulativelanguagescore1 =
      _frenchlanguagetestscore1() + _englishlanguagetestscore1();
  return accumulativelanguagescore1;
}

double _languagepercentagevalue(){
 // double languagepercentagevalue =0;

  if(accumulativelanguagescore1 >=6 || accumulativelanguagescore1 <= 17 ){
    languagepercentagevalue = 0.2;
  }

  else if(accumulativelanguagescore1 >=18 || accumulativelanguagescore1 <= 30 ){
    languagepercentagevalue = 0.5;
  }

  else if(accumulativelanguagescore1 >=31 || accumulativelanguagescore1 <= 52 ){
    languagepercentagevalue = 0.75;
  }
  else if (accumulativelanguagescore1 >=53 || accumulativelanguagescore1 <= 64 ){
    languagepercentagevalue = 1.0;
  }

  return languagepercentagevalue;

}

 _calculational(){
  var totaleligibilityscore4=0;
  if( int.parse(workexpriencecentervalue) > totaleligibilityscore4)
  {
    totaleligibilityscore4 = totaleligibilityscore4 + int.parse(workexpriencecentervalue);
  }
  else{
    totaleligibilityscore4 = totaleligibilityscore4 - int.parse(workexpriencecentervalue);
  }

  return totaleligibilityscore4;
}

_calculationalarangedemployment(){
 var totaleligibilityscore5=0;
 totaleligibilityscore=0;
  if( int.parse(arrangedemploymentcenter) > totaleligibilityscore5)
  {
    totaleligibilityscore5 = totaleligibilityscore5 + int.parse(arrangedemploymentcenter);
  }
  else{
    totaleligibilityscore5 = totaleligibilityscore5 - totaleligibilityscore5;
    //totaleligibilityscore5 = totaleligibilityscore5 -20;
  }

  return totaleligibilityscore5;
}

_calculationalage(){
 var totaleligibilityscore1=0;
  if( int.parse(agecentervalue) > totaleligibilityscore1)
  {
    totaleligibilityscore1 = totaleligibilityscore1 + int.parse(agecentervalue);
  }
  else{
    totaleligibilityscore1 = totaleligibilityscore1 - int.parse(agecentervalue);
  }

  return totaleligibilityscore1;
}

_calculationaleducation(){
  var totaleligibilityscore2=0;
  if( int.parse(educationcentervalue) > totaleligibilityscore2)
  {
    totaleligibilityscore2 = totaleligibilityscore2 + int.parse(educationcentervalue);
  }
  else{
    totaleligibilityscore2 = totaleligibilityscore2 - int.parse(educationcentervalue);
  }

  return totaleligibilityscore2;
}



_adaptability1(){
  if(adaptabilityvalue <= 0.5){
    adaptabilityvalue = adaptabilityvalue + 0.5;}
   return adaptabilityvalue;
}
_adaptability2(){

   if(adaptabilityvalue == 1.0){
     adaptabilitycentervalue ="10";
   }
  else if (adaptabilityvalue == 0.5){
    adaptabilitycentervalue = "5";
   }
  else{
    adaptabilitycentervalue="0";
   }
  return adaptabilitycentervalue;
}
_calculationaladaptability(){
  int totaleligiblityscore6=0;
  totaleligiblityscore6 =int.parse(adaptabilitycentervalue);
  return totaleligiblityscore6;
}

int _calculatiofinal(){
  totaleligibilityscore = _calculationalage()+_calculationaleducation()+_calculational()+_calculationalarangedemployment()+_calculationaladaptability()+_accumulativelanguagescore1();
  return totaleligibilityscore;
}

// _colorchange(){
//   if(totaleligibilityscore >= 64){
//     Text("$totaleligibilityscore",style: TextStyle(color: Colors.deepOrangeAccent),);
//   }
//   return totaleligibilityscore;
//}