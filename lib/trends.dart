import 'dart:ffi';
//import 'dart:html';

import 'package:cigapp/CigApp.dart';
import 'package:cigapp/books.dart';
import 'package:cigapp/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:cigapp/crscalci.dart';


class pools extends StatefulWidget {
  @override
  _poolsState createState() => _poolsState();
}

class _poolsState extends State<pools> {
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
                    "Express Entry Pool",
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
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width*0.90,
                height: MediaQuery.of(context).size.width*0.20,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  child: StreamBuilder(
                    stream: Firestore.instance.collection('Trends').snapshots(),
                    builder: (context, snapshot){
                      if(!snapshot.hasData) return Text("Loading Data... Plese wait");
                      return
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:<Widget>[
                              Column(
                                children:<Widget>[
                                  Row(
                                    children:<Widget>[
                                      RichText(
                                        text: TextSpan(
                                            text: "Draw",
                                            style: TextStyle(fontSize: 20,color: Colors.teal),

                                            children: [
                                              TextSpan(text:snapshot.data.documents[0]['draw no'].toString(),style:TextStyle(fontSize: 20,color: Colors.teal), ),
                                              TextSpan(text:("  |  "),style:TextStyle(fontSize: 20,color: Colors.teal), ),
                                              TextSpan(text:snapshot.data.documents[0]['category'],style:TextStyle(fontSize: 20,color: Colors.teal), )
                                            ]
                                        ),

                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:8.0),
                                    child: Row(
                                      children:<Widget>[
                                        RichText(
                                          text: TextSpan(
                                              text: snapshot.data.documents[0]['date'],
                                              style: TextStyle(fontSize: 20,color: Colors.teal),

                                              children: [
                                                TextSpan(text:("  |  "),style:TextStyle(fontSize: 20,color: Colors.teal), ),
                                                TextSpan(text:snapshot.data.documents[0]['invites'].toString(),style:TextStyle(fontSize: 20,color: Colors.deepOrangeAccent.shade200), ),
                                                TextSpan(text:(" invites"),style:TextStyle(fontSize: 20,color: Colors.teal), )
                                              ]
                                          ),

                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Text(snapshot.data.documents[0]['score'].toString(),style: TextStyle(fontSize: 20,color: Colors.deepOrangeAccent.shade200,fontWeight: FontWeight.bold),)
                            ],
                          );

                    },
                  ),


                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom:8.0,right: 8.0,left: 8.0),
              child: Container(
                width: MediaQuery.of(context).size.width*0.90,
                height: MediaQuery.of(context).size.width*0.20,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  child: StreamBuilder(
                    stream: Firestore.instance.collection('Trends').snapshots(),
                    builder: (context, snapshot){
                      if(!snapshot.hasData) return Text("Loading Data... Plese wait");
                      return
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Column(
                              children:<Widget>[
                                Row(
                                  children:<Widget>[
                                    RichText(
                                      text: TextSpan(
                                          text: "Draw",
                                          style: TextStyle(fontSize: 20,color: Colors.teal),

                                          children: [
                                            TextSpan(text:snapshot.data.documents[1]['draw no'].toString(),style:TextStyle(fontSize: 20,color: Colors.teal), ),
                                            TextSpan(text:("  |  "),style:TextStyle(fontSize: 20,color: Colors.teal), ),
                                            TextSpan(text:snapshot.data.documents[1]['category'],style:TextStyle(fontSize: 20,color: Colors.teal), )
                                          ]
                                      ),

                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:8.0),
                                  child: Row(
                                    children:<Widget>[
                                      RichText(
                                        text: TextSpan(
                                            text: snapshot.data.documents[1]['date'],
                                            style: TextStyle(fontSize: 20,color: Colors.teal),

                                            children: [
                                              TextSpan(text:("  |  "),style:TextStyle(fontSize: 20,color: Colors.teal), ),
                                              TextSpan(text:snapshot.data.documents[1]['invites'].toString(),style:TextStyle(fontSize: 20,color: Colors.deepOrangeAccent.shade200), ),
                                              TextSpan(text:(" invites"),style:TextStyle(fontSize: 20,color: Colors.teal), )
                                            ]
                                        ),

                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Text(snapshot.data.documents[1]['score'].toString(),style: TextStyle(fontSize: 20,color: Colors.deepOrangeAccent.shade200,fontWeight: FontWeight.bold),)
                          ],
                        );

                    },
                  ),


                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:8.0,right: 8.0,left: 8.0),
              child: Container(
                width: MediaQuery.of(context).size.width*0.90,
                height: MediaQuery.of(context).size.width*0.20,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  child: StreamBuilder(
                    stream: Firestore.instance.collection('Trends').snapshots(),
                    builder: (context, snapshot){
                      if(!snapshot.hasData) return Text("Loading Data... Plese wait");
                      return
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Column(
                              children:<Widget>[
                                Row(
                                  children:<Widget>[
                                    RichText(
                                      text: TextSpan(
                                          text: "Draw",
                                          style: TextStyle(fontSize: 20,color: Colors.teal),

                                          children: [
                                            TextSpan(text:snapshot.data.documents[2]['draw no'].toString(),style:TextStyle(fontSize: 20,color: Colors.teal), ),
                                            TextSpan(text:("  |  "),style:TextStyle(fontSize: 20,color: Colors.teal), ),
                                            TextSpan(text:snapshot.data.documents[2]['category'],style:TextStyle(fontSize: 20,color: Colors.teal), )
                                          ]
                                      ),

                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:8.0),
                                  child: Row(
                                    children:<Widget>[
                                      RichText(
                                        text: TextSpan(
                                            text: snapshot.data.documents[2]['date'],
                                            style: TextStyle(fontSize: 20,color: Colors.teal),

                                            children: [
                                              TextSpan(text:("  |  "),style:TextStyle(fontSize: 20,color: Colors.teal), ),
                                              TextSpan(text:snapshot.data.documents[2]['invites'].toString(),style:TextStyle(fontSize: 20,color: Colors.deepOrangeAccent.shade200), ),
                                              TextSpan(text:(" invites"),style:TextStyle(fontSize: 20,color: Colors.teal), )
                                            ]
                                        ),

                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Text(snapshot.data.documents[2]['score'].toString(),style: TextStyle(fontSize: 20,color: Colors.deepOrangeAccent.shade200,fontWeight: FontWeight.bold),)
                          ],
                        );

                    },
                  ),


                ),
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(bottom:8.0,right: 8.0,left: 8.0),
              child: Container(
                width: MediaQuery.of(context).size.width*0.90,
                height: MediaQuery.of(context).size.width*0.20,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  child: StreamBuilder(
                    stream: Firestore.instance.collection('Trends').snapshots(),
                    builder: (context, snapshot){
                      if(!snapshot.hasData) return Text("Loading Data... Plese wait");
                      return
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Column(
                              children:<Widget>[
                                Row(
                                  children:<Widget>[
                                    RichText(
                                      text: TextSpan(
                                          text: "Draw",
                                          style: TextStyle(fontSize: 20,color: Colors.teal),

                                          children: [
                                            TextSpan(text:snapshot.data.documents[3]['draw no'].toString(),style:TextStyle(fontSize: 20,color: Colors.teal), ),
                                            TextSpan(text:("  |  "),style:TextStyle(fontSize: 20,color: Colors.teal), ),
                                            TextSpan(text:snapshot.data.documents[3]['category'],style:TextStyle(fontSize: 20,color: Colors.teal), )
                                          ]
                                      ),

                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:8.0),
                                  child: Row(
                                    children:<Widget>[
                                      RichText(
                                        text: TextSpan(
                                            text: snapshot.data.documents[3]['date'],
                                            style: TextStyle(fontSize: 20,color: Colors.teal),

                                            children: [
                                              TextSpan(text:("  |  "),style:TextStyle(fontSize: 20,color: Colors.teal), ),
                                              TextSpan(text:snapshot.data.documents[3]['invites'].toString(),style:TextStyle(fontSize: 20,color: Colors.deepOrangeAccent.shade200), ),
                                              TextSpan(text:(" invites"),style:TextStyle(fontSize: 20,color: Colors.teal), )
                                            ]
                                        ),

                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Text(snapshot.data.documents[3]['score'].toString(),style: TextStyle(fontSize: 20,color: Colors.deepOrangeAccent.shade200,fontWeight: FontWeight.bold),)
                          ],
                        );

                    },
                  ),


                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom:8.0,right: 8.0,left: 8.0),
              child: Container(
                width: MediaQuery.of(context).size.width*0.90,
                height: MediaQuery.of(context).size.width*0.20,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  child: StreamBuilder(
                    stream: Firestore.instance.collection('Trends').snapshots(),
                    builder: (context, snapshot){
                      if(!snapshot.hasData) return Text("Loading Data... Plese wait");
                      return
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Column(
                              children:<Widget>[
                                Row(
                                  children:<Widget>[
                                    RichText(
                                      text: TextSpan(
                                          text: "Draw",
                                          style: TextStyle(fontSize: 20,color: Colors.teal),

                                          children: [
                                            TextSpan(text:snapshot.data.documents[4]['draw no'].toString(),style:TextStyle(fontSize: 20,color: Colors.teal), ),
                                            TextSpan(text:("  |  "),style:TextStyle(fontSize: 20,color: Colors.teal), ),
                                            TextSpan(text:snapshot.data.documents[4]['category'],style:TextStyle(fontSize: 20,color: Colors.teal), )
                                          ]
                                      ),

                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:8.0),
                                  child: Row(
                                    children:<Widget>[
                                      RichText(
                                        text: TextSpan(
                                            text: snapshot.data.documents[4]['date'],
                                            style: TextStyle(fontSize: 20,color: Colors.teal),

                                            children: [
                                              TextSpan(text:("  |  "),style:TextStyle(fontSize: 20,color: Colors.teal), ),
                                              TextSpan(text:snapshot.data.documents[4]['invites'].toString(),style:TextStyle(fontSize: 20,color: Colors.deepOrangeAccent.shade200), ),
                                              TextSpan(text:(" invites"),style:TextStyle(fontSize: 20,color: Colors.teal), )
                                            ]
                                        ),

                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Text(snapshot.data.documents[4]['score'].toString(),style: TextStyle(fontSize: 20,color: Colors.deepOrangeAccent.shade200,fontWeight: FontWeight.bold),)
                          ],
                        );

                    },
                  ),


                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom:8.0,right: 8.0,left: 8.0),
              child: Container(
                width: MediaQuery.of(context).size.width*0.90,
                height: MediaQuery.of(context).size.width*0.20,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  child: StreamBuilder(
                    stream: Firestore.instance.collection('Trends').snapshots(),
                    builder: (context, snapshot){
                      if(!snapshot.hasData) return Text("Loading Data... Plese wait");
                      return
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Column(
                              children:<Widget>[
                                Row(
                                  children:<Widget>[
                                    RichText(
                                      text: TextSpan(
                                          text: "Draw",
                                          style: TextStyle(fontSize: 20,color: Colors.teal),

                                          children: [
                                            TextSpan(text:snapshot.data.documents[5]['draw no'].toString(),style:TextStyle(fontSize: 20,color: Colors.teal), ),
                                            TextSpan(text:("  |  "),style:TextStyle(fontSize: 20,color: Colors.teal), ),
                                            TextSpan(text:snapshot.data.documents[5]['category'],style:TextStyle(fontSize: 20,color: Colors.teal), )
                                          ]
                                      ),

                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:8.0),
                                  child: Row(
                                    children:<Widget>[
                                      RichText(
                                        text: TextSpan(
                                            text: snapshot.data.documents[5]['date'],
                                            style: TextStyle(fontSize: 20,color: Colors.teal),

                                            children: [
                                              TextSpan(text:("  |  "),style:TextStyle(fontSize: 20,color: Colors.teal), ),
                                              TextSpan(text:snapshot.data.documents[5]['invites'].toString(),style:TextStyle(fontSize: 20,color: Colors.deepOrangeAccent.shade200), ),
                                              TextSpan(text:(" invites"),style:TextStyle(fontSize: 20,color: Colors.teal), )
                                            ]
                                        ),

                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Text(snapshot.data.documents[5]['score'].toString(),style: TextStyle(fontSize: 20,color: Colors.deepOrangeAccent.shade200,fontWeight: FontWeight.bold),)
                          ],
                        );

                    },
                  ),


                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom:8.0,right: 8.0,left: 8.0),
              child: Container(
                width: MediaQuery.of(context).size.width*0.90,
                height: MediaQuery.of(context).size.width*0.20,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  child: StreamBuilder(
                    stream: Firestore.instance.collection('Trends').snapshots(),
                    builder: (context, snapshot){
                      if(!snapshot.hasData) return Text("Loading Data... Plese wait");
                      return
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Column(
                              children:<Widget>[
                                Row(
                                  children:<Widget>[
                                    RichText(
                                      text: TextSpan(
                                          text: "Draw",
                                          style: TextStyle(fontSize: 20,color: Colors.teal),

                                          children: [
                                            TextSpan(text:snapshot.data.documents[6]['draw no'].toString(),style:TextStyle(fontSize: 20,color: Colors.teal), ),
                                            TextSpan(text:("  |  "),style:TextStyle(fontSize: 20,color: Colors.teal), ),
                                            TextSpan(text:snapshot.data.documents[6]['category'],style:TextStyle(fontSize: 20,color: Colors.teal), )
                                          ]
                                      ),

                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:8.0),
                                  child: Row(
                                    children:<Widget>[
                                      RichText(
                                        text: TextSpan(
                                            text: snapshot.data.documents[6]['date'],
                                            style: TextStyle(fontSize: 20,color: Colors.teal),

                                            children: [
                                              TextSpan(text:("  |  "),style:TextStyle(fontSize: 20,color: Colors.teal), ),
                                              TextSpan(text:snapshot.data.documents[6]['invites'].toString(),style:TextStyle(fontSize: 20,color: Colors.deepOrangeAccent.shade200), ),
                                              TextSpan(text:(" invites"),style:TextStyle(fontSize: 20,color: Colors.teal), )
                                            ]
                                        ),

                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Text(snapshot.data.documents[6]['score'].toString(),style: TextStyle(fontSize: 20,color: Colors.deepOrangeAccent.shade200,fontWeight: FontWeight.bold),)
                          ],
                        );

                    },
                  ),


                ),
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.only(bottom:8.0,right: 8.0,left: 8.0),
            //   child: Container(
            //     width: MediaQuery.of(context).size.width*0.90,
            //     height: MediaQuery.of(context).size.width*0.20,
            //     child: Card(
            //       elevation: 5,
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(12.0)),
            //       child: StreamBuilder(
            //         stream: Firestore.instance.collection('Trends').snapshots(),
            //         builder: (context, snapshot){
            //           if(!snapshot.hasData) return Text("Loading Data... Plese wait");
            //           return
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children:<Widget>[
            //                 Column(
            //                   children:<Widget>[
            //                     Row(
            //                       children:<Widget>[
            //                         RichText(
            //                           text: TextSpan(
            //                               text: "Draw",
            //                               style: TextStyle(fontSize: 20,color: Colors.teal),
            //
            //                               children: [
            //                                 TextSpan(text:snapshot.data.documents[7]['draw no'].toString(),style:TextStyle(fontSize: 20,color: Colors.teal), ),
            //                                 TextSpan(text:("  |  "),style:TextStyle(fontSize: 20,color: Colors.teal), ),
            //                                 TextSpan(text:snapshot.data.documents[7]['category'],style:TextStyle(fontSize: 20,color: Colors.teal), )
            //                               ]
            //                           ),
            //
            //                         ),
            //                       ],
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsets.only(top:8.0),
            //                       child: Row(
            //                         children:<Widget>[
            //                           RichText(
            //                             text: TextSpan(
            //                                 text: snapshot.data.documents[7]['date'],
            //                                 style: TextStyle(fontSize: 20,color: Colors.teal),
            //
            //                                 children: [
            //                                   TextSpan(text:("  |  "),style:TextStyle(fontSize: 20,color: Colors.teal), ),
            //                                   TextSpan(text:snapshot.data.documents[7]['invites'].toString(),style:TextStyle(fontSize: 20,color: Colors.deepOrangeAccent.shade200), ),
            //                                   TextSpan(text:(" invites"),style:TextStyle(fontSize: 20,color: Colors.teal), )
            //                                 ]
            //                             ),
            //
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //                 Text(snapshot.data.documents[7]['score'].toString(),style: TextStyle(fontSize: 20,color: Colors.deepOrangeAccent.shade200,fontWeight: FontWeight.bold),)
            //               ],
            //             );
            //
            //         },
            //       ),
            //
            //
            //     ),
            //   ),
            // ),

            // Padding(
            //   padding: const EdgeInsets.only(bottom:8.0,right: 8.0,left: 8.0),
            //   child: Container(
            //     width: MediaQuery.of(context).size.width*0.90,
            //     height: MediaQuery.of(context).size.width*0.20,
            //     child: Card(
            //       elevation: 5,
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(12.0)),
            //       child: StreamBuilder(
            //         stream: Firestore.instance.collection('Trends').snapshots(),
            //         builder: (context, snapshot){
            //           if(!snapshot.hasData) return Text("Loading Data... Plese wait");
            //           return
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children:<Widget>[
            //                 Column(
            //                   children:<Widget>[
            //                     Row(
            //                       children:<Widget>[
            //                         RichText(
            //                           text: TextSpan(
            //                               text: "Draw",
            //                               style: TextStyle(fontSize: 20,color: Colors.teal),
            //
            //                               children: [
            //                                 TextSpan(text:snapshot.data.documents[8]['draw no'].toString(),style:TextStyle(fontSize: 20,color: Colors.teal), ),
            //                                 TextSpan(text:("  |  "),style:TextStyle(fontSize: 20,color: Colors.teal), ),
            //                                 TextSpan(text:snapshot.data.documents[8]['category'],style:TextStyle(fontSize: 20,color: Colors.teal), )
            //                               ]
            //                           ),
            //
            //                         ),
            //                       ],
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsets.only(top:8.0),
            //                       child: Row(
            //                         children:<Widget>[
            //                           RichText(
            //                             text: TextSpan(
            //                                 text: snapshot.data.documents[8]['date'],
            //                                 style: TextStyle(fontSize: 20,color: Colors.teal),
            //
            //                                 children: [
            //                                   TextSpan(text:("  |  "),style:TextStyle(fontSize: 20,color: Colors.teal), ),
            //                                   TextSpan(text:snapshot.data.documents[8]['invites'].toString(),style:TextStyle(fontSize: 20,color: Colors.deepOrangeAccent.shade200), ),
            //                                   TextSpan(text:(" invites"),style:TextStyle(fontSize: 20,color: Colors.teal), )
            //                                 ]
            //                             ),
            //
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //                 Text(snapshot.data.documents[8]['score'].toString(),style: TextStyle(fontSize: 20,color: Colors.deepOrangeAccent.shade200,fontWeight: FontWeight.bold),)
            //               ],
            //             );
            //
            //         },
            //       ),
            //
            //
            //     ),
            //   ),
            // ),
            //
            // Padding(
            //   padding: const EdgeInsets.only(bottom:8.0,right: 8.0,left: 8.0),
            //   child: Container(
            //     width: MediaQuery.of(context).size.width*0.90,
            //     height: MediaQuery.of(context).size.width*0.20,
            //     child: Card(
            //       elevation: 5,
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(12.0)),
            //       child: StreamBuilder(
            //         stream: Firestore.instance.collection('Trends').snapshots(),
            //         builder: (context, snapshot){
            //           if(!snapshot.hasData) return Text("Loading Data... Plese wait");
            //           return
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children:<Widget>[
            //                 Column(
            //                   children:<Widget>[
            //                     Row(
            //                       children:<Widget>[
            //                         RichText(
            //                           text: TextSpan(
            //                               text: "Draw",
            //                               style: TextStyle(fontSize: 20,color: Colors.teal),
            //
            //                               children: [
            //                                 TextSpan(text:snapshot.data.documents[9]['draw no'].toString(),style:TextStyle(fontSize: 20,color: Colors.teal), ),
            //                                 TextSpan(text:("  |  "),style:TextStyle(fontSize: 20,color: Colors.teal), ),
            //                                 TextSpan(text:snapshot.data.documents[9]['category'],style:TextStyle(fontSize: 20,color: Colors.teal), )
            //                               ]
            //                           ),
            //
            //                         ),
            //                       ],
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsets.only(top:8.0),
            //                       child: Row(
            //                         children:<Widget>[
            //                           RichText(
            //                             text: TextSpan(
            //                                 text: snapshot.data.documents[9]['date'],
            //                                 style: TextStyle(fontSize: 20,color: Colors.teal),
            //
            //                                 children: [
            //                                   TextSpan(text:("  |  "),style:TextStyle(fontSize: 20,color: Colors.teal), ),
            //                                   TextSpan(text:snapshot.data.documents[9]['invites'].toString(),style:TextStyle(fontSize: 20,color: Colors.deepOrangeAccent.shade200), ),
            //                                   TextSpan(text:(" invites"),style:TextStyle(fontSize: 20,color: Colors.teal), )
            //                                 ]
            //                             ),
            //
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //                 Text(snapshot.data.documents[9]['score'].toString(),style: TextStyle(fontSize: 20,color: Colors.deepOrangeAccent.shade200,fontWeight: FontWeight.bold),)
            //               ],
            //             );
            //
            //         },
            //       ),
            //
            //
            //     ),
            //   ),
            // ),
            //
            // Padding(
            //   padding: const EdgeInsets.only(bottom:8.0,right: 8.0,left: 8.0),
            //   child: Container(
            //     width: MediaQuery.of(context).size.width*0.90,
            //     height: MediaQuery.of(context).size.width*0.20,
            //     child: Card(
            //       elevation: 5,
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(12.0)),
            //       child: StreamBuilder(
            //         stream: Firestore.instance.collection('Trends').snapshots(),
            //         builder: (context, snapshot){
            //           if(!snapshot.hasData) return Text("Loading Data... Plese wait");
            //           return
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children:<Widget>[
            //                 Column(
            //                   children:<Widget>[
            //                     Row(
            //                       children:<Widget>[
            //                         RichText(
            //                           text: TextSpan(
            //                               text: "Draw",
            //                               style: TextStyle(fontSize: 20,color: Colors.teal),
            //
            //                               children: [
            //                                 TextSpan(text:snapshot.data.documents[10]['draw no'].toString(),style:TextStyle(fontSize: 20,color: Colors.teal), ),
            //                                 TextSpan(text:("  |  "),style:TextStyle(fontSize: 20,color: Colors.teal), ),
            //                                 TextSpan(text:snapshot.data.documents[10]['category'],style:TextStyle(fontSize: 20,color: Colors.teal), )
            //                               ]
            //                           ),
            //
            //                         ),
            //                       ],
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsets.only(top:8.0),
            //                       child: Row(
            //                         children:<Widget>[
            //                           RichText(
            //                             text: TextSpan(
            //                                 text: snapshot.data.documents[10]['date'],
            //                                 style: TextStyle(fontSize: 20,color: Colors.teal),
            //
            //                                 children: [
            //                                   TextSpan(text:("  |  "),style:TextStyle(fontSize: 20,color: Colors.teal), ),
            //                                   TextSpan(text:snapshot.data.documents[10]['invites'].toString(),style:TextStyle(fontSize: 20,color: Colors.deepOrangeAccent.shade200), ),
            //                                   TextSpan(text:(" invites"),style:TextStyle(fontSize: 20,color: Colors.teal), )
            //                                 ]
            //                             ),
            //
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //                 Text(snapshot.data.documents[10]['score'].toString(),style: TextStyle(fontSize: 20,color: Colors.deepOrangeAccent.shade200,fontWeight: FontWeight.bold),)
            //               ],
            //             );
            //
            //         },
            //       ),
            //
            //
            //     ),
            //   ),
            // ),

          ],
        ),
      ),

    );
  }
}
