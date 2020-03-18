import 'package:flutter/material.dart';
import 'package:oba0/screens/intro/step4.dart';

class middle extends StatefulWidget{
  @override
  step3 createState() => step3();
}

class step3 extends State<middle> {
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
  Widget _buildRow() {
    return ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.asset('assets/boba_rating.png', height: 100.0, width: 100.0),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text('username', style: TextStyle(fontWeight: FontWeight.bold),),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Image.asset('assets/boba_pic.jpeg')
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          IconData(58719, fontFamily: 'MaterialIcons'),
                        ),
                        Text('location', style: TextStyle(fontStyle: FontStyle.italic),)
                      ],
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(maxHeight: 400.0, maxWidth: 161.0),
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text("blah, blah, blah. I don't want to type a long review. This is annoying. Does this look like yelp? I know the order does not match the pic at all"),
                  ),
                  Container(
                    constraints: BoxConstraints(maxHeight: 400.0, maxWidth: 161.0),
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text("My Order: Strawberry Tea"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

}