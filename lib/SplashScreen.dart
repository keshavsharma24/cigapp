
import 'dart:async';

import 'package:cigapp/CigApp.dart';
import 'package:cigapp/login.dart';
import 'package:cigapp/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreen createState() => _SplashScreen();
}
class _SplashScreen extends State<SplashScreen>
{


  @override
  Widget build(BuildContext context) {
    checkUserLoggedin();
    return Scaffold(
      body:
        Container(
          decoration: BoxDecoration(
              image:DecorationImage(
                  image: AssetImage("images/cig_background_new.jpg"),
                  fit: BoxFit.fill
              )
          ),
          child:Center(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Text("Canada Immigration Guide",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.deepOrangeAccent.shade200,fontWeight: FontWeight.w900,fontSize:30,fontFamily: 'DancingScript'),
              ),
              Text("Catch Your Dreams",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.deepOrangeAccent.shade200,fontWeight: FontWeight.w900,fontSize:20,fontFamily: 'DancingScript'),
              ),
            ],

        )
        )
        )

    );
  }
  void checkUserLoggedin() async
  {
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    int response=0;
    if(prefs.containsKey("LoginInfo"))
    {
      response=prefs.getInt("LoginInfo");
    }
    if(prefs.containsKey("email"))
      {
       emailid=prefs.getString("email") ;
       print("We are in ${email}");
      }
    else
      {
        print("We are no ${email}");
      }
    if(response==1)
    {
      Timer(Duration(seconds: 3),()
      {
        dispose();
        Navigator.pushAndRemoveUntil<dynamic>(context, MaterialPageRoute(builder: (context) =>
            CigApp()), (route) => false);

      });

    }else {

      Timer(Duration(seconds: 3),()
      {
        dispose();
        Navigator.pushAndRemoveUntil(
            context, MaterialPageRoute(builder: (context) =>
            signup()), (route) => false);
      });
    }
  }
}
