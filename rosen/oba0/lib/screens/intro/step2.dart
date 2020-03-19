import 'package:flutter/material.dart';
import 'package:oba0/screens/intro/flavors.dart';
import 'package:oba0/screens/intro/step3.dart';

class middle1 extends StatefulWidget{
  @override
  step2 createState() => step2();
}

class step2 extends State<middle1>{
  @override
  var boba_drinker = false;
  var notboba_drinker = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Image.asset('assets/oba_pink.png', height: 60.0, width: 160.0,),
          ),
        ),
      ),
     body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
       children: <Widget>[
         Row(
           children: <Widget>[
             IconButton(
               icon: Icon(IconData(58362, fontFamily: 'MaterialIcons')),
               color:(boba_drinker) ? Colors.blue[100] : Colors.grey[500],
               onPressed: (){
                 boba_drinker = true;
                 notboba_drinker = false;
                 setState(() {

                 });
                 MaterialPageRoute(builder: (context) => flavors1());
               },
             ),
             Text("I am a regular boba drinker!")
           ],
         ),
         Row(
           children: <Widget>[
             IconButton(
               icon: Icon(IconData(58362, fontFamily: 'MaterialIcons')),
               color:(notboba_drinker) ? Colors.blue[100] : Colors.grey[500],
             onPressed: (){
                 notboba_drinker = true;
                 boba_drinker = false;
                 //MaterialPageRoute(builder: (context) => flavors2()),
               setState(() {

               });
             },
             ),
             Text("I am not a regular boba drinker")
           ],
         ),
         SizedBox(height: 30.0),
         RaisedButton(
           onPressed: () {
             if (boba_drinker) {
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => flavors1()),
               ); // Navigate to second route when tapped.
             }
             else {
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => flavors2()),
               );
             }
           },
           child: Text('Next'),
           textColor: Colors.black,
           elevation: 7,
           color: Colors.pink[50],
         )
       ],
    )
    );
  }
}