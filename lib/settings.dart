import 'package:cigapp/CigApp.dart';
import 'package:cigapp/books.dart';
import 'package:cigapp/login.dart';
import 'package:cigapp/registration.dart';
import 'package:cigapp/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'crscalci.dart';
import 'registration.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

bool Homeselected =false;
bool Ebookselected =false;
bool settingsselected =false;


class setting extends StatefulWidget {
  @override
  _settingState createState() => _settingState();
}

Future<String> getData() async {
  final  user = await FirebaseAuth.instance.currentUser();
  final  uid = user.uid.toString();
  return uid;
}

class _settingState extends State<setting> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
 // final firebase = Firestore.instance.collection('userinfo').where(),
  @override
  Widget build(BuildContext context) {
    int _index =2;
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
          //  scrollDirection: Axis.vertical,
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
              "Settings",
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            //Spacer(flex: 1),


          ],
        ),

      ),

             Container(
               height: MediaQuery.of(context).size.height*0.28,
               width: MediaQuery.of(context).size.width*0.87,
               child:ListView(
                 scrollDirection: Axis.vertical,
               children:<Widget>[

                 //  StreamBuilder (
                 // //var uid = await getData();
                 //
                 //  stream: Firestore.instance.collection('userinfo').snapshots(),
                 //  builder: (context, snapshot)   {
                 //    if (!snapshot.hasData)
                 //      return Text("Loading Data... Plese wait");
                 //
                 //   final  uid =  getData();
                 //    return


                      Card(
                        color: Colors.indigo.shade300,
                        child: Column(
                          children: <Widget>[
                            FlatButton.icon(onPressed: null,
                              icon: Icon(
                                Icons.account_circle,
                                color: Colors.white,
                                size: 150,
                                  ),
                              label: Text(""),),
                            Text(emailid.toString(),
                              style: TextStyle(color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'DavidLibre'),),


                          ],
                        ),

                      ),
                  // },
                  // ),
               ],
               ),
             ),
              Container(
                //height: MediaQuery.of(context).size.height*0.60,
                //width: MediaQuery.of(context).size.width*0.87,
                child: Column(
                children:<Widget>[
                InkWell(
                  onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> crscalci()));
              },
                  child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Row(
                    children: [
                      FlatButton.icon(onPressed: null, icon:Icon( Icons.assignment,color: Colors.indigo.shade300,size: 30,), label: Text(""),),
                      Text("My Score",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                    ],
                  )  ,
                  ),
                ),

                ),

                 // InkWell(
                  //  onTap: (){
                   //   Navigator.push(context, MaterialPageRoute(builder: (context)=> crscalci()));

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Row(
                            children: [
                              FlatButton.icon(onPressed: null, icon:Icon( Icons.folder_open,color: Colors.indigo.shade300,size: 30,), label: Text(""),),
                              Text("My Recommendation",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                            ],
                          )  ,
                        ),
                      ),
                //    },
                //  ),

                  // InkWell(
                  //   onTap: (){
                  //     Navigator.push(context, MaterialPageRoute(builder: (context)=> crscalci()));

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Row(
                            children: [
                              FlatButton.icon(onPressed: null, icon:Icon( Icons.share,color: Colors.indigo.shade300,size: 30,), label: Text(""),),
                              Text("Share",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                            ],
                          )  ,
                        ),
                      ),
                  //  },
                 // ),

                  InkWell(
                    onTap: () {
                      //Navigator.push(context,
                          // MaterialPageRoute(builder: (context) => crscalci()));
                      // void logoutUser(){
                      //   SharedPreferences prefs = await SharedPreferences.getInstance();
                      //   prefs?.clear()
                      //   Navigator.pushAndRemoveUntil(
                      //       context,
                      //       ModalRoute.withName("signup"),
                      //       ModalRoute.withName("/Home")
                      //   );
                      // }

                      Future<void> _signOut() async {
                        await _firebaseAuth.signOut();
                      }

                      _signOut();
                      Fluttertoast.showToast(
                          msg: "Logout Successfull",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          //  timeInSecForIos: 1,
                          backgroundColor: Colors.blueAccent,
                          textColor: Colors.white,
                          fontSize: 16.0);
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>
                          MyLoginPage()));



                    },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Row(
                            children: [
                              FlatButton.icon(onPressed: null, icon:Icon( Icons.exit_to_app,color: Colors.indigo.shade300,size: 30,), label: Text(""),),
                              Text("Logout",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                            ],
                          )  ,
                        ),
                      ),

                  ),

                ],
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
              settingsselected =false;
              Navigator.push(context, MaterialPageRoute(builder: (context)=> CigApp()));
            }
            else if(_index ==1){
              Ebookselected =true;
              Homeselected =false;
              settingsselected =false;
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
        currentIndex: _index,
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
