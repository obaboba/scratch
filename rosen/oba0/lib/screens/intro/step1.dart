import "package:flutter/material.dart";

class Step1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(image: AssetImage("assets/piggy/reactions-20-feed-b.png"), height: 105.0,
                  alignment: Alignment.centerLeft),
              SizedBox(height: 50),
              SizedBox(height: 50),
              Text(
                  "hi",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  )
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}