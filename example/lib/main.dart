import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_json_viewer/flutter_json_viewer.dart';

void main() => runApp(MyApp());

const testStringObj = '''{
      "ParaString": "www.apigj.com",
      "ParaObject": {
        "ObjectType": "Api",
        "ObjectName": "Manager",
        "ObjectId": "Code",
        "FatherId": "Generator"
      },
      "ParaLong": 6222123188092928,
      "ParaInt": 5303,
      "ParaFloat": -268311581425.664,
      "ParaBool": false,
      "ParaArrString": [
        "easy",
        "fast"
      ],
      "ParaArrObj": [
        {
          "SParaString": "Work efficiently long words long words long words long words long words long words long words long words long words long words long words long words long words ",
          "SParaLong": 7996655703949312,
          "SParaInt": 8429,
          "SParaFloat": -67669103057.3056,
          "SParaBool": false,
          "SParaArrString": [
            "har",
            "zezbehseh"
          ],
          "SParaArrLong": [
            6141464276893696,
            2096646955466752
          ],
          "SParaArrInt": [
            1601,
            757
          ],
          "SParaArrFloat": [
            -643739466439.0656,
            -582978647149.7728
          ],
          "SParaArrBool": [
            false,
            false
          ]
        },
        {
          "SParaString": "Let's go",
          "SParaLong": 641970970034176,
          "SParaInt": 37,
          "SParaFloat": 556457726574.592,
          "SParaBool": false,
          "SParaArrString": [
            "miw",
            "aweler"
          ],
          "SParaArrLong": [
            3828767638159360,
            7205915801419776
          ],
          "SParaArrInt": [
            1187,
            6397
          ],
          "SParaArrFloat": [
            -744659811617.9968,
            494621489417.4208
          ],
          "SParaArrBool": [
            true,
            false
          ]
        }
      ],
      "ParaArrLong": [
        7607846344589312,
        7840335854043136
      ],
      "ParaArrInt": [
        2467,
        1733
      ],
      "ParaArrFloat": [
        759502472845.7216,
        -157877664743.424
      ],
      "ParaArrBool": [
        true,
        true
      ]
    }''';

const testArray = [
  {
    "id": 1,
    "array": [
      {'nested': true}
    ],
  },
  {
    "id": 2,
    "array": [
      {'nested': false}
    ],
  }
];

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JsonViewerExample',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final testObj = json.decode(testStringObj);
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Test json widget"),
        ),
        body: SafeArea(
          child: ListView(
              // Center is a layout widget. It takes a single child and positions it
              // in the middle of the parent.
              children: [
                JsonViewer(testObj, onValueLongPress: (v) {
                 print(v.toString());
                }),
                Text('Array example'),
                JsonViewer(testArray, onValueLongPress: (v) {
                  print(v.toString());
                })
              ]),
        ));
  }
}
