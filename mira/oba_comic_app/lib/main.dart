import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:core';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        primaryTextTheme: TextTheme(
            title: TextStyle(
                color: Colors.black
            )
        )
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class Rn{

  }

class _MyHomePageState extends State<MyHomePage> {

    var bg = ['assets/bg/Black.png', 'assets/bg/Blue.png', 'assets/bg/G_Blue_Green.png', 'assets/bg/G_Blue_Pink.png', 'assets/bg/G_Pink_Yellow.png',
    'assets/bg/Green.png', 'assets/bg/Pink.png', 'assets/bg/S_Blue_Blue.png', 'assets/bg/S_Blue_Pink.png', 'assets/bg/S_Green_Green.png',
    'assets/bg/Trees.png', 'assets/bg/Waves.png', 'assets/bg/Yellow.png'];

    var d = [['HI OBA!', 'HI BOBA!'], ['I love Oba.', 'But I love Boba!'], ["You're a boba pearl.", "You're a pearl, Boba!"], ["Hey Oba, where's the Boba?", "Right there, you!"],
            ["Where is Oba?", "With the Boba!"], ["Wanna play table tennis?", "Sure, I'll be the ball!"]];

  String randomBg() {
    Random r = new Random();
    int randomNumber = r.nextInt(13);
    return bg[randomNumber];
  }

  List randomD() {
    Random r = new Random();
    int randomNumber = r.nextInt(6);
    return d[randomNumber];
    }

@override
Widget build(BuildContext context) {
  var r = randomD();
  return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            'assets/ObaBoba_Header.png', height: 400, width: 200,),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(randomBg()),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(left: 10, top: 30),
                      child: Image.asset(
                          'assets/cf/PCF_1.png', height: 200, width: 200)
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          constraints: BoxConstraints(
                              maxHeight: 300.0, maxWidth: 100.0),
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(r[0]),
                        ),
                      ]),
                ],
              ),
              Row(
                  children: <Widget>[
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            constraints: BoxConstraints(
                                maxHeight: 300.0, maxWidth: 100.0),
                            padding: const EdgeInsets.only(left: 35),
                            child: Text(r[1]),
                          )
                        ]
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Image.asset(
                            'assets/cf/BCF_1.png', height: 220, width: 220)
                    ),

                  ]
              )

            ]
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
           setState(() {
           });
        },
        child: Icon(Icons.autorenew),
        backgroundColor: Colors.pink[50],
      ),
    );
  }}
