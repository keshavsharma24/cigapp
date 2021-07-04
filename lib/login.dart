import 'package:cigapp/CigApp.dart';
import 'package:cigapp/signup.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

var emailid;


class MyLoginPage extends StatefulWidget {
  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  final _auth = FirebaseAuth.instance;
  bool showProgress = false;
  String email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Canada Immigration Guide",style: TextStyle(
          fontFamily: 'DancingScript',
          fontSize: 25,
          color: Colors.white,
        ),),
      ),
      body: Center(
        child: ModalProgressHUD(
          inAsyncCall: showProgress,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Login Page",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left:25.0,right:25),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    email = value; // get value from TextField
                  },
                  decoration: InputDecoration(
                      hintText: "Enter your Email",
                      // border: OutlineInputBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(32.0)))
                         ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left:25.0,right:25),
                child: TextField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    password = value; //get value from textField
                  },
                  decoration: InputDecoration(
                      hintText: "Enter your Password",
                      // border: OutlineInputBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(32.0)))
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Material(
                elevation: 5,
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(32.0),
                child: MaterialButton(
                  onPressed: () async {
                    setState(() {
                      showProgress = true;
                    });

                    try {
                      final newUser = await _auth.signInWithEmailAndPassword(
                          email: email, password: password);

                      print(newUser.toString());

                      if (newUser != null) {
                        emailid = email;
                        Fluttertoast.showToast(
                            msg: "Login Successfull",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                          //  timeInSecForIos: 1,
                            textColor: Colors.blueAccent,
                            backgroundColor: Colors.white,
                            fontSize: 10.0);
                        setState(() {
                          showProgress = false;
                          print("Email obje t ${email}");
                          setUserLoggedIn(email);
                          dispose();
                          Navigator.pushAndRemoveUntil<dynamic>(context, MaterialPageRoute(builder: (context) =>
                              CigApp()),(route) => false);
                        });
                      }else
                        {
                          Fluttertoast.showToast(
                              msg: "Invalid Credentials!",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              //  timeInSecForIos: 1,
                              backgroundColor: Colors.white,
                              textColor: Colors.blueAccent,
                              fontSize: 10.0);
                          setState(() {
                            showProgress = false;
                          });
                        }

                    } catch (e) {
                      Fluttertoast.showToast(
                          msg: "Invalid Credentials!",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          //  timeInSecForIos: 1,
                          backgroundColor: Colors.white,
                          textColor: Colors.blueAccent,
                          fontSize: 10.0);
                      setState(() {
                        showProgress = false;
                      });
                    }
                  },
                  minWidth: 200.0,
                  height: 45.0,
                  child: Text(
                    "Login",
                    style:
                    TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  void setUserLoggedIn(String email) async
  {
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    prefs.setInt("LoginInfo", 1);
    prefs.setString("email", email);
    print("our email is $email");
  }
}