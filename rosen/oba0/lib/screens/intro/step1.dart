import "package:flutter/material.dart";
import 'package:oba0/screens/intro/step2.dart';

class Step1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 100.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Image.asset('assets/oba_pink.png', height: 60.0, width: 160.0,),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/oba.png', height: 100.0, width: 100.0,),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.only(left: 20.0,),
                child: Padding(
                  padding: EdgeInsets.only(right: 20.0),
                    child: Text(
                    "You have successfully logged in! Click the button below to set your boba preferences.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    )

                ),
                )
              ),
              SizedBox(height: 10),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => middle1()),
                  );// Navigate to second route when tapped.
                },
                child: Text('Next'),
                textColor: Colors.black,
                elevation: 7,
                color: Colors.pink[50],
              )
            ],
          ),
        ),
      ),
    );
  }
}
