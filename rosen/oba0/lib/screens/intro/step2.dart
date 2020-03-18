import 'package:flutter/material.dart';
import 'package:oba0/screens/intro/step3.dart';

class step2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 60.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Image.asset('assets/oba_pink.png', height: 60.0, width: 160.0,),
          ),
        ),
      ),
     body: RaisedButton(
       onPressed: () {
         Navigator.push(
           context,
           MaterialPageRoute(builder: (context) => middle()),
         );// Navigate to second route when tapped.
       },
       child: Text('Next'),
       textColor: Colors.black,
       elevation: 7,
       color: Colors.pink[50],
     )
    );
  }
}