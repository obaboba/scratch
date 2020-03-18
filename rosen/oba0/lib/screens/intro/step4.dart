import 'package:flutter/material.dart';

class step4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(IconData(58362, fontFamily: 'MaterialIcons'),
                  color: Colors.black26,
                ),
                onPressed: (){
                },
              ),
              IconButton(
                icon: Icon(IconData(58362, fontFamily: 'MaterialIcons'),
                  color: Colors.brown[700],
                ),
                onPressed: (){
                },
              ),
              IconButton(
                icon: Icon(IconData(58362, fontFamily: 'MaterialIcons'),
                  color: Colors.brown[700],
                ),
                onPressed: (){
                },
              ),
              IconButton(
                icon: Icon(IconData(58362, fontFamily: 'MaterialIcons'),
                  color: Colors.brown[700],
                ),
                onPressed: (){
                },
              ),
              IconButton(
                icon: Icon(IconData(58362, fontFamily: 'MaterialIcons'),
                  color: Colors.brown[700],
                ),
                onPressed: (){
                },
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Type the name of the boba shop here',
                  border: InputBorder.none,
                ),
              )
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Type your order here',
                  border: InputBorder.none,
                ),
              )
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Type your review here',
                  border: InputBorder.none,
                ),
              )
          )
        ],
      ),
    );
  }
}