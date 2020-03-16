// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());
//var likes = {};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        primaryColor: Colors.pink[50],
          primaryTextTheme: TextTheme(
              title: TextStyle(
                  color: Colors.black
              )
          )
      ),
      home: FirstRoute(),
    );
  }
  final _formKey = GlobalKey<FormState>();

}

class RandomWordsState extends State<RandomWords> {
  @override
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final Set<WordPair> _saved = Set<WordPair>();
  Widget build_button(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);// Navigate back to first route when tapped.
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          final Iterable<ListTile> tiles = _saved.map(
                (WordPair pair) {
              return ListTile(
                title: Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },
          );
          final List<Widget> divided = ListTile
              .divideTiles(
            context: context,
            tiles: tiles,
          )
              .toList();

          return Scaffold(
            appBar: AppBar(
              title: Text('Saved Suggestions'),
            ),
            body: ListView(children: divided),
          );
        },
      ),
    );
  }
  Widget _buildRow(WordPair pair) {
    final bool alreadySaved = _saved.contains(pair);
    //var x = pair.asPascalCase;
    //likes[x] = 0;
    return ListTile(
      title: Text(
        pair.asPascalCase, //x,
        style: _biggerFont,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
            //likes[x] --;
          } else {
            _saved.add(pair);
            //likes[x] ++;
          }
        });
      },
      trailing: Column(
        children: <Widget>[
          Icon(
              alreadySaved ? Icons.favorite : Icons.favorite_border,
              color: alreadySaved ? Colors.pink[100] : null
          ),
          //Text(likes[x].toString())
        ],
      ),
    );
  }
  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemBuilder: /*1*/ (context, i) {
          if (i.isOdd) return Divider(); /*2*/

          final index = i ~/ 2; /*3*/
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); /*4*/
          }
          return Container(
            color: Colors.white,
              child: _buildRow(_suggestions[index]),
          );
        });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      body: _buildSuggestions(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      /*appBar: AppBar(
        title: Text('Log In/Create an Account'),
      ),*/
      body: Center(
        child: new Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Form(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        //Text('L', style: TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold, color: Colors.brown[800]) ),
                        Padding(
                          //padding: const EdgeInsets.only(top: 20.0),
                          child: new Image.asset('assets/smaller_oba.jpg', height: 60.5, width: 60.5,),
                        ),
                        //Text('gin', style: TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold, color: Colors.brown[800]) ),
                      ],
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Enter your phone number',
                              )
                          ),
                        )
                      )
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: RaisedButton(
                          color: Colors.pink[50],
                          child: Text('Submit'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SecondRoute()),
                            );// Navigate to second route when tapped.
                          },
                        )
                    )
                    /**/
                  ],
                )
              )
            )
            /*Text('Open route'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );// Navigate to second route when tapped.
            },*/
        )
        )
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);// Navigate back to first route when tapped.
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
