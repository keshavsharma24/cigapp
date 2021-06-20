import 'dart:ffi';
//import 'dart:html';

import 'package:cigapp/CigApp.dart';
import 'package:cigapp/books.dart';
import 'package:cigapp/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:cigapp/crscalci.dart';


bool Homeselected =false;
bool Ebookselected =false;
bool settingsselected =false;

bool onteligible =false;
bool ontnoeeligible =false;
bool albeligible =false;
bool albnoteligible= false;
bool novaeligible =false;
bool novanoteligible =false;
bool sasknoteligible =false;
bool saskeligible =false;
bool manieligible =false;
bool maninoteligible= false;
bool peieligible =false;
bool peinoteligible =false;


List<int> ontario =[0213,2147,2172,2173,2174,2175,0111,0214,0601,1111,1122,3012,3124,3132];
List<int> Alberta =[0121,0124,0211,0212,0213,0601,1212,1225,2113,2131,2133,2234,2252,7201,7203,7241,7242,7251,7271,7293,7322,7371,9212];


class pnpsuggestion extends StatefulWidget {
  @override
  _pnpsuggestionState createState() => _pnpsuggestionState();
}

class _pnpsuggestionState extends State<pnpsuggestion> {

  TextEditingController NocInputController = new TextEditingController(text: "0000");
  TextEditingController CrsInputController = new TextEditingController(text:"0");

  @override
  void initstate(){
    super.initState();
    NocInputController =TextEditingController();
   // CrsInputController  =TextEditingController(text: '0');
  }



  Widget build(BuildContext context) {
    int _index =0;
    int crsvalue = int.parse(CrsInputController.text);
    int nocvalue = int.parse(NocInputController.text);
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
         // scrollDirection: Axis.vertical,
          children:<Widget>[
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
                    "PNP Suggestions",
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  //Spacer(flex: 1),

                ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                //alignment: Alignment.center,
                width: MediaQuery.of(context).size.width*0.90,
                height: MediaQuery.of(context).size.height*0.20,
                child: Card(
                  elevation: 0.5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                    child: Column(
                      children:<Widget>[
                      Row(
                        children:<Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text("Your NOC Code",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          ),
                          Container(
                            width: 100,
                            height: 30,
                            child: Padding(
                              padding: const EdgeInsets.only(left:15.0),
                              child: TextField(
                                // obscureText: true,
                                textAlign: TextAlign.center,
                               //cursorWidth: 10,
                                textInputAction: null,
                                autocorrect: true,
                                keyboardType: TextInputType.number,
                                inputFormatters:[
                                  LengthLimitingTextInputFormatter(4),
                                ],
                                // onChanged: (value) {
                                //   password = value; //get the value entered by user.
                                // },

                                controller: NocInputController,
                              ),
                            ),
                          ),

                          FlatButton.icon(
                              onPressed: () =>
                              {showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    content: Stack(
                                      overflow: Overflow.visible,
                                      children: <Widget>[
                                        Container(
                                          alignment: Alignment.center,
                                          //height: 100,
                                          //width: 300,
                                          width: MediaQuery
                                              .of(context)
                                              .size
                                              .width * 0.50,
                                          height: MediaQuery.of(context).size.height*0.20,
                                          // color: Colors.black45,
                                          child: ListView(
                                            scrollDirection: Axis.vertical,
                                            children: <Widget>[

                                              Text("Every JOB has it's specific NOC CODE"),

                                              // Row(
                                              //   children:<Widget>[

                                                 Text("find your NOC Code ",style: TextStyle(fontSize: 20),),

                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: RaisedButton(
                                                   onPressed: _launchURL,
                                                   child: Padding(
                                                     padding: const EdgeInsets.all(8.0),
                                                     child: Text(" HERE",style: TextStyle(color: Colors.amber,fontSize: 25),),
                                                   ),
                                               ),
                                                )


                                             //    ],
                                             // )


                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                              },
                              icon: Icon(
                                Icons.info_outline,
                                color: Colors.orangeAccent,
                                size: 20,
                              ),
                              label: Text("")),
                        ],

                    ),
                        Row(
                          children:<Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top:15.0,left: 18.0),
                              child: Text("Your CRS Score",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                            ),
                            Container(
                              height: 30,
                              width: 100,
                              child: Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: TextField(
                                  // obscureText: true,
                                  textAlign: TextAlign.center,
                                  //cursorWidth: 10,
                                  // textInputAction: null,
                                  autocorrect: true,
                                  keyboardType: TextInputType.number,
                                  inputFormatters:<TextInputFormatter>[
                                    WhitelistingTextInputFormatter.digitsOnly,
                                    LengthLimitingTextInputFormatter(4),
                                  ],
                                  // onChanged: (value) {
                                  //   password = value; //get the value entered by user.
                                  // },

                                  controller: CrsInputController,
                                  //onTap: CrsInputController.clear(),
                                ),
                              ),
                            ),

                            FlatButton.icon(
                                onPressed: () =>
                                {showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      content: Stack(
                                        overflow: Overflow.visible,
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment.center,
                                            //height: 100,
                                            //width: 300,
                                            width: MediaQuery
                                                .of(context)
                                                .size
                                                .width * 0.60,
                                            height: MediaQuery.of(context).size.height*0.10,
                                            // color: Colors.black45,
                                            child: ListView(
                                              scrollDirection: Axis.vertical,
                                              children: <Widget>[
                                                Row(
                                                  children:<Widget>[
                                                    InkWell(
                                                      onTap: (){
                                                        setState(() {
                                                          CrsInputController.text = totalscore.toString()  ;
                                                        });
                                                        Navigator.pop(context);
                                                        },

                                                   child: Text("Copy your CRS Score",style: TextStyle(fontSize: 20),),


                                                    )
                                                  ],
                                                )


                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                                },
                                icon: Icon(
                                  Icons.info_outline,
                                  color: Colors.orangeAccent,
                                  size: 20,
                                ),
                                label: Text("")),
                          ],

                        ),
                      ],

                    )

                ),
              ),



            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: MediaQuery.of(context).size.width*0.90,
                height: MediaQuery.of(context).size.height*0.15,
                child: Card(
                  elevation: 0.5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  child: ListView(
                    //scrollDirection: Axis.horizontal,
                    children:<Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0,top: 10.0,bottom: 10),
                        child: Text("PNP's You Can Opt For",style: TextStyle(fontSize: 20),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Container(
                              height: 20,
                              width: 20,
                              color: Colors.teal,
                            ),
                            Text("Eligible",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            Container(
                              height: 20,
                              width: 20,
                              color: Colors.grey,
                            ),
                            Text("Not Eligible",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            Container(
                              height: 20,
                              width: 20,
                              color: Colors.lightBlue.shade200,
                            ),
                            Text("More info reqd.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: MediaQuery.of(context).size.height*0.45,
                width: MediaQuery.of(context).size.width*0.90,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children:<Widget>[
                   // InkWell(
                   //   onTap: (){
                   //     setState(() {
                   //       if(CrsInputController >= 465.toString()){
                   //         Color:Colors.teal;
                   //       }
                   //     });
                   //   },
                   // )
                    InkWell(
                      onTap: (){
                        setState(() {
                          if(crsvalue > 470 && ontario.contains(nocvalue)){
                            onteligible = true;
                          }
                          else{ontnoeeligible = true;}
                        });
                      },

                      child: Container(
                       height: 70,

                       child: Card(
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(12.0)),
                         color: onteligible?Colors.teal :ontnoeeligible?Colors.grey:Colors.white,
                         child:Padding(
                           padding: const EdgeInsets.only(top: 8.0,left: 18),
                           child: RichText(
                             text: TextSpan(
                                 text: "OINP-Ontario",
                                 style: TextStyle(fontSize: 20,color: Colors.black),

                                 children: [
                                   TextSpan(text: '\n tap to know your status',style:TextStyle(fontSize: 12,color: Colors.grey), )
                                 ]
                             ),
                           ),
                         ),
                       ),
                     ),
                    ),

                     InkWell(
                      onTap: (){
                        setState(() {
                          if(crsvalue > 450){
                            albeligible =true;
                          }
                          else{
                            albnoteligible = true;
                          }
                        });
                      },
                      child: Container(
                        height: 70,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                          color: albeligible?Colors.teal :albnoteligible?Colors.grey:Colors.white,
                          child:Padding(
                           // padding: const EdgeInsets.all(8.0),
                            padding: const EdgeInsets.only(top: 8.0,left: 18),
                            child: RichText(
                              text: TextSpan(
                                  text: "AINP-Alberta",
                                  style: TextStyle(fontSize: 20,color: Colors.black),

                                  children: [
                                    TextSpan(text: '\n tap to know your status',style:TextStyle(fontSize: 12,color: Colors.grey), )
                                  ]
                              ),
                            ),
                          ),
                        ),
                      ),
                     ),


                    InkWell(
                      onTap: (){
                        setState(() {
                          if(crsvalue > 300 && Alberta.contains(nocvalue)){
                            novaeligible =true;
                          }
                          else{
                            novanoteligible= true;
                          }
                        });
                      },
                    child: Container(
                      height: 70,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                        color: novaeligible?Colors.teal :novanoteligible?Colors.grey:Colors.white,
                        child:Padding(
                         // padding: const EdgeInsets.all(8.0),
                          padding: const EdgeInsets.only(top: 8.0,left: 18),
                          child: RichText(
                            text: TextSpan(
                                text: "NSNP-Nova scotia",
                                style: TextStyle(fontSize: 20,color: Colors.black),

                                children: [
                                  TextSpan(text: '\n tap to know your status',style:TextStyle(fontSize: 12,color: Colors.grey), )
                                ]
                            ),
                          ),
                        ),
                      ),
                    ),
      ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          if(crsvalue < 420 && Alberta.contains(nocvalue)){
                            sasknoteligible =true;
                          }
                          else{
                            saskeligible = true;
                          }
                        });
                      },
                    child: Container(
                      height: 70,
                      child: Card(

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                        color: saskeligible?Colors.lightBlue.shade200 :sasknoteligible?Colors.grey:Colors.white,
                        child:Padding(
                        //  padding: const EdgeInsets.all(8.0),
                          padding: const EdgeInsets.only(top: 8.0,left: 18),
                          child: RichText(
                            text: TextSpan(
                              text: "SINP-Saskatchwan",
                              style: TextStyle(fontSize: 20,color: Colors.black),

                              children: [
                                TextSpan(text: '\n tap to know your status',style:TextStyle(fontSize: 12,color: Colors.grey), )
                              ]
                            ),
                          ),
                        ),


                      ),
                    ),
                    ),

      InkWell(
        onTap: (){
          setState(() {
              if(crsvalue > 450){
                manieligible =true;
              }
              else{
                maninoteligible = true;
              }
          });
        },
                    child: Container(
                      height: 70,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                        color: manieligible?Colors.teal :maninoteligible?Colors.grey:Colors.white,
                       // child:Text("MPNP-Manitoba",style: TextStyle(fontSize: 20)),
                        child:Padding(
                          //padding: const EdgeInsets.all(8.0),
                          padding: const EdgeInsets.only(top: 8.0,left: 18),
                          child: RichText(
                            text: TextSpan(
                                text: "MPNP-Manitoba",
                                style: TextStyle(fontSize: 20,color: Colors.black),

                                children: [
                                  TextSpan(text: '\n tap to know your status',style:TextStyle(fontSize: 12,color: Colors.grey), )
                                ]
                            ),
                          ),
                        ),
                      ),
                    ),

      ),

                     InkWell(
                       onTap: (){
                         setState(() {
                           if(crsvalue > 250){
                             peieligible =true;
                           }
                           else{
                             peinoteligible = true;
                           }
                         });
                       },
                     child: Container(
                      height: 70,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                              color: peieligible?Colors.lightBlue.shade200:peinoteligible?Colors.grey:Colors.white,
                        //child:Text("PEI-Prince Edward",style: TextStyle(fontSize: 20)),
                        child:Padding(
                          //padding: const EdgeInsets.all(8.0),
                          padding: const EdgeInsets.only(top: 8.0,left: 18),
                          child: RichText(
                            text: TextSpan(
                                text: "PEI-Prince Edward",
                                style: TextStyle(fontSize: 20,color: Colors.black),

                                children: [
                                  TextSpan(text: '\n tap to know your status',style:TextStyle(fontSize: 12,color: Colors.grey), )
                                ]
                            ),
                          ),
                        ),
                      ),
                    ),
                     ),

                    SizedBox(
                      height: 40,
                    )

                  ],
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

_launchURL() async{
const url = 'https://www.canada.ca/en/immigration-refugees-citizenship/services/immigrate-canada/express-entry/eligibility/find-national-occupation-code.html';
if(await canLaunch(url)){
  await launch(url);
}else{
  throw'could not launch $url';
}
}


