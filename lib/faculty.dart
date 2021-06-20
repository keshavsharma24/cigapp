import 'package:animations/animations.dart';
import 'package:cigapp/CigApp.dart';
import 'package:cigapp/books.dart';
import 'package:cigapp/crscalci.dart';
import 'package:cigapp/settings.dart';
import 'package:cigapp/transaction.dart';
import 'package:cigapp/trends.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:toast/toast.dart';

bool Homeselected =false;
bool Ebookselected =false;
bool settingsselected =false;



class faculty extends StatefulWidget {
  @override
  _facultyState createState() => _facultyState();
}

class _facultyState extends State<faculty> {

  int _index =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
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
              "Choose your faculty",
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),

      ),
      Container(
          height: MediaQuery.of(context).size.height*0.30,
          width: MediaQuery.of(context).size.width*0.70,
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
                    AssetImage("images/graduate.png")),
              ),
            ),
            //child:Image.asset("images/calci34567.jpg",cacheHeight: 80,cacheWidth: 60,)
          )
      ),
             // Spacer(flex: 3,),

              // Center(
              //   child: Container(
              //     height: MediaQuery.of(context).size.height*0.20,
              //     width: MediaQuery.of(context).size.width*0.30,
              //     // height:140,
              //     // width: 140,
              //      // color: Colors.yellowAccent,
              //       child: Card(
              //         semanticContainer: true,
              //         clipBehavior: Clip.antiAliasWithSaveLayer,
              //         elevation: 5,
              //        // margin: EdgeInsets.all(20),
              //
              //         //width: 50,
              //         //decoration: BoxDecoration(
              //         shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(15.0)),
              //         color: Colors.redAccent.shade100,
              //         child: Container(
              //           margin: EdgeInsets.only(
              //               top: 10, bottom: 10, left: 20, right: 20),
              //           //  color: Colors.transparent,
              //           decoration: BoxDecoration(
              //             color: Colors.transparent,
              //             image: new DecorationImage(
              //                 image:
              //                 AssetImage("images/chemistry.png")),
              //           ),
              //         ),
              //         //child:Image.asset("images/calci34567.jpg",cacheHeight: 80,cacheWidth: 60,)
              //       )
              //     ),
              // ),

             // Spacer(flex:3),
              Center(
                child:Column(
                  children:<Widget>[
              Container(
                child: CircleAvatar(

                  radius: 80.0,
                 // maxRadius: 80.0,
                 // minRadius: 40.0,
                  backgroundColor: Colors.redAccent.shade100,
                  child: Container(
                    height: 100,
                  width: 100,
                  decoration: BoxDecoration(image: new DecorationImage(
                      image: AssetImage("images/chemistry.png")),),

                  ),
                ),
                decoration: BoxDecoration(
                  shape:  BoxShape.circle,
                  border: Border.all(
                    color: Colors.redAccent.shade200,
                    width: 5,
                  ),
                ),
              ),
                    Padding(
                      padding: const EdgeInsets.only(top:18.0),
                      child: Text("Faculty of Science",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'DavidLibre'),),
                    )
                ],
                ),

              ),
              Padding(
                padding: const EdgeInsets.only(top:18.0,bottom:18.0),
                child: Center(
                  child:Column(
                    children:<Widget>[
                      Container(
                        child: CircleAvatar(
                          radius: 80.0,
                          backgroundColor: Colors.lightGreen.shade100,
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(image: new DecorationImage(
                                image: AssetImage("images/mouse.png")),),

                          ),
                        //  backgroundImage: AssetImage("images/mouse.png"),
                        ),
                        decoration: BoxDecoration(
                          shape:  BoxShape.circle,
                          border: Border.all(
                            color: Colors.lightGreen.shade400,
                            width: 5,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:18.0),
                        child: Text("Faculty of Computers",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'DavidLibre'),),
                      )
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:18.0,bottom:18.0),
                child: Center(
                  child:Column(
                    children:<Widget>[
                      Container(
                        child: CircleAvatar(
                          radius: 80.0,
                          backgroundColor: Colors.teal.shade300,
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(image: new DecorationImage(
                                image: AssetImage("images/stock-market.png")),),

                          ),
                         // backgroundImage: AssetImage("images/stock-market.png"),
                        ),
                        decoration: BoxDecoration(
                          shape:  BoxShape.circle,
                          border: Border.all(
                            color: Colors.teal.shade600,
                            width: 5,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:18.0),
                        child: Text("Faculty of Commerce",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'DavidLibre'),),
                      )
                    ],
                  ),

                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:18.0,bottom:18.0),
                child: Center(
                  child:Column(
                    children:<Widget>[
                      Container(
                      child: CircleAvatar(
                        radius: 80.0,
                        backgroundColor: Colors.amber.shade100,
                        child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(image: new DecorationImage(
                              image: AssetImage("images/building.png")),),

                        ),
                       // backgroundImage: AssetImage("images/building.png"),
                      ),
                        decoration: BoxDecoration(
                          shape:  BoxShape.circle,
                          border: Border.all(
                            color: Colors.amber.shade400,
                            width: 5,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:18.0),
                        child: Text("Faculty of Hospitality",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'DavidLibre'),),
                      )
                    ],
                  ),

                ),
              ),


              //Text("Faculty of Science",style: TextStyle(fontSize: 12),),


      ],
    ),
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
