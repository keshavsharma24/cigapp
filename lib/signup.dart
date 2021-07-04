import 'package:cigapp/CigApp.dart';
import 'package:cigapp/registration.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';
import 'login.dart';

String email, password;

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  final _auth = FirebaseAuth.instance;
  bool showProgress = false;

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
                "Registration Page",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left:25.0,right:25.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    email = value; //get the value entered by user.
                  },
                  decoration: InputDecoration(
                      hintText: "Enter your Email",
                     // border: OutlineInputBorder(
                     //     borderRadius: BorderRadius.only(bottomLeft:Radius.circular(32.0)))
                         ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left:25.0,right:25.0),
                child: TextField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    password = value; //get the value entered by user.
                  },
                  decoration: InputDecoration(
                      hintText: "Enter your Password",
                      // border: OutlineInputBorder(
                      //     borderRadius: BorderRadius.only(bottomLeft:Radius.circular(32.0)))
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
                      final newuser =
                      await _auth.createUserWithEmailAndPassword(
                          email: email, password: password);

                      if (newuser != null) {
                       // emailid =email;
                        setUserLoggedIn(email);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => registration()),
                        );

                        setState(() {
                          showProgress = false;
                        });
                      }else
                        {
                          Toast.show("Something Went Wrong Please Try Again!", context);
                          setState(() {
                            showProgress = false;
                          });

                        }
                    } catch (e) {
                      Toast.show("Something Went Wrong Please Try Again!", context);
                      setState(() {
                        showProgress = false;
                      });
                    }
                  },
                  minWidth: 200.0,
                  height: 45.0,
                  child: Text(
                    "Register",
                    style:
                    TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyLoginPage()),
                  );
                },
                child: Text(
                  "Already Registred? Login Now",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w900),
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
  }

}