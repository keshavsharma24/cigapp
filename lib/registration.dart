import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:firebase_auth/firebase_auth.dart';



import 'login.dart';

var coustormerId;
var custfirstname;
var custlastname;
var custage;
var custcontactno;

class registration extends StatefulWidget {
  @override
  _registrationState createState() => _registrationState();
}



class _registrationState extends State<registration> {


  var firestoreDb = Firestore.instance.collection("userInfo").snapshots();
  TextEditingController  firstNameInputController;
  TextEditingController  lastNameInputController;
  TextEditingController  ageInputController;
  TextEditingController  contactNoInputController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    firstNameInputController =TextEditingController();
    lastNameInputController =TextEditingController();
    ageInputController =TextEditingController();
    contactNoInputController =TextEditingController();

  }

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
       // child: ModalProgressHUD(
         // inAsyncCall: showProgress,
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
              // ListView(
              //   scrollDirection: Axis.vertical,
              //   children:<Widget>[


              Text(
                "Please fill the form",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left:25.0,right:25.0),
                child: TextField(
                 // keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  autofocus: true,
                  autocorrect: true,
                  //onChanged: (value) {
                   // email = value; //get the value entered by user.
                 // },
                  decoration: InputDecoration(
                    hintText: "First Name*",
                    // border: OutlineInputBorder(
                    //     borderRadius: BorderRadius.only(bottomLeft:Radius.circular(32.0)))
                  ),
                  controller: firstNameInputController,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left:25.0,right:25.0),
                child: TextField(
                 // obscureText: true,
                  textAlign: TextAlign.center,
                 autocorrect: true,
                 // onChanged: (value) {
                 //   password = value; //get the value entered by user.
                 // },
                  decoration: InputDecoration(
                    hintText: "Last Name",
                    // border: OutlineInputBorder(
                    //     borderRadius: BorderRadius.only(bottomLeft:Radius.circular(32.0)))
                  ),
                  controller: lastNameInputController,
                ),
              ),

              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left:25.0,right:25.0),
                child: TextField(
                  // obscureText: true,
                  textAlign: TextAlign.center,
                  autocorrect: true,
                  keyboardType: TextInputType.number,
                  inputFormatters:[
                  LengthLimitingTextInputFormatter(2),
                  ],
                  // onChanged: (value) {
                  //   password = value; //get the value entered by user.
                  // },
                  decoration: InputDecoration(
                    hintText: "Your Age",
                    // border: OutlineInputBorder(
                    //     borderRadius: BorderRadius.only(bottomLeft:Radius.circular(32.0)))
                  ),
                  controller: ageInputController,
                ),
              ),

              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left:25.0,right:25.0),
                child: TextField(
                  // obscureText: true,
                  textAlign: TextAlign.center,
                  autocorrect: true,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10),
                  ],
                  // onChanged: (value) {
                  //   password = value; //get the value entered by user.
                  // },
                  decoration: InputDecoration(
                    hintText: "Contact number",
                    // border: OutlineInputBorder(
                    //     borderRadius: BorderRadius.only(bottomLeft:Radius.circular(32.0)))
                  ),
                  controller: contactNoInputController,
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
                    //final uid =

                    var user = await FirebaseAuth.instance.currentUser();
                    var uid = user.uid;


                    if(firstNameInputController.text.isNotEmpty &&
                    lastNameInputController.text.isNotEmpty &&
                    ageInputController.text.isNotEmpty &&
                    contactNoInputController.text.isNotEmpty){
                      Firestore.instance.collection("userinfo").document(uid)
                          .setData({
                        "firstName" : firstNameInputController.text,
                        "lastName" : lastNameInputController.text,
                        "age": ageInputController.text,
                        "contactNo" : contactNoInputController.text,
                        "timestamp" : new DateTime.now(),
                        "uid" : uid,
                      }).then((response){
                       // print(response.documentID);
                       // coustormerId =response.documentID.toString();
                        custfirstname = firstNameInputController.text;
                        custlastname = lastNameInputController.text;
                        custage = ageInputController;
                        custcontactno = contactNoInputController.text;
                        firstNameInputController.clear();
                        lastNameInputController.clear();
                        ageInputController.clear();
                        contactNoInputController.clear();
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyLoginPage()),);

                      } ).catchError((error)=> print(error));
                    }
                  },
                  minWidth: 200.0,
                  height: 45.0,
                  child: Text(
                    "Save",
                    style:
                    TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
                  ),
                ),
              ),

            ],
          ),
    //    ),
     //       ],
      //    ),
      ),
    );
  }
}
