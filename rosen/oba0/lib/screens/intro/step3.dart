import 'package:flutter/material.dart';
import 'package:oba0/screens/intro/step4.dart';

class middle2 extends StatefulWidget{
  @override
  step3 createState() => step3();
}

class step3 extends State<middle2> {
  @override
  var alreadySaved = false;
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
      body: _buildSuggestions(),
    );
  }
  Widget _buildSuggestions() {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => step4()),
            );// Add your onPressed code here!
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.pink[50],
          foregroundColor: Colors.white,
        ),
        body: Center(
            child: ListView.builder(
                padding: const EdgeInsets.all(8.0),
                itemBuilder: /*1*/ (context, i) {
                  if (i.isOdd) return Divider(); /*2*/
                  return Container(
                    color: Colors.white,
                    child: _buildRow(),
                  );
                })
        )
    );
  }
  Widget _buildRow() { // Builds a Post:
    return ListTile(
      title: Column( // Holds post together
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row( // Rating, Username, Heart Icon
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column( // Rating and Username
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row( // Boba Pearl Rating
                    children: <Widget>[
                      Image.asset('assets/oba_pearl.png', height: 25.0, width: 25.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Image.asset('assets/oba_pearl.png', height: 25.0, width: 25.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Image.asset('assets/oba_pearl.png', height: 25.0, width: 25.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Image.asset('assets/oba_pearl.png', height: 25.0, width: 25.0),
                      ),
                      Image.asset('assets/oba_pearl.png', height: 25.0, width: 25.0),
                    ],
                  ),
                  Padding( // Username
                    padding: const EdgeInsets.only(bottom: 10.0, top: 10.0, left: 5.0),
                    child: Text('username', style: TextStyle(fontWeight: FontWeight.bold),),
                  )
                ],
              ),
              Padding( // Heart Icon
                padding: const EdgeInsets.only(top: 15.0, left: 170.0),
                child: Icon(
                  alreadySaved ? Icons.favorite : Icons.favorite_border,
                  color: alreadySaved ? Colors.pink[100] : null,
                ),
              )
            ],
          ),
          Row( // Image and Text
            children: <Widget>[
              Padding( // Image
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Image.asset('assets/boba_pic.jpeg')
              ),
              Column( // Text
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row( // Location Icon and Text
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          IconData(58719, fontFamily: 'MaterialIcons'),
                        ),
                        Text('location', style: TextStyle(fontStyle: FontStyle.italic),)
                      ],
                    ),
                  ),
                  Container( // Order
                    constraints: BoxConstraints(maxHeight: 400.0, maxWidth: 161.0),
                    padding: const EdgeInsets.only(left: 15.0, top: 5.0, bottom: 5.0),
                    child: Text("My Order: Strawberry Tea"),
                  ),
                  Container( // Review/Comments
                    constraints: BoxConstraints(maxHeight: 400.0, maxWidth: 161.0),
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text("blah, blah, blah. I don't want to type a long review. This is annoying. Does this look like yelp? I know the order does not match the pic at all"),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      onTap: () { // Sets variable for heart icon color
        if (alreadySaved) {
          alreadySaved = false;
        } else {
          alreadySaved = true;
        }
        setState((){});
      },
    );
  }
}