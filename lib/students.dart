import 'package:animations/animations.dart';
import 'package:cigapp/CigApp.dart';
import 'package:cigapp/books.dart';
import 'package:cigapp/crscalci.dart';
import 'package:cigapp/faculty.dart';
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



class students extends StatefulWidget {
  @override
  _studentsState createState() => _studentsState();
}

class _studentsState extends State<students> {

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
              "Students",
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
                  "We try to help students by finding them University/College according to their requirements \n Click on the below image to continue",
                  style: TextStyle(fontSize: 23, fontFamily: 'DavidLibre'),
                ),
              ),

              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => pools()));
              //   },
                Padding(
                  padding: const EdgeInsets.only(left: 18.0,right: 18.0,top: 18.0,bottom: 18.0),
                  child: OpenContainer(
                      openElevation: 0,
                      closedElevation: 0,
                      //closedColor: Colors.transparent,
                      transitionType: ContainerTransitionType.fade,
                     transitionDuration: Duration(milliseconds: 500) ,
                    openBuilder: (BuildContext context, void Function({Object returnValue}) action) {return faculty();  },
                    closedBuilder: (BuildContext context, VoidCallback openContainer) { return  Container(
                        height: MediaQuery.of(context).size.height*0.30,
                        width: MediaQuery.of(context).size.width*0.70,
                         // RoundedRectangleBorder(
                         //    borderRadius: BorderRadius.circular(15.0)),
                        child: Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 5,
                         // margin: EdgeInsets.all(20),
                         // height: MediaQuery.of(context).size.height*0.30,
                         // width: MediaQuery.of(context).size.width*0.70,


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
                    );
                    },
                       // (BuildContext context, void Function() action) {  },

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
     // ],
    );
  //    )
  }
}
