import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'models/user.dart';
import 'libs/auth.dart';
import 'screens/auth/login_page.dart';
import 'screens/intro/intro.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: Colors.black,
            primaryIconTheme: IconThemeData(color: Colors.black),
            primaryTextTheme: TextTheme(
                title: TextStyle(color: Colors.black, fontFamily: "Aveny")),
            textTheme: TextTheme(title: TextStyle(color: Colors.black))),
        home: Wrapper(),
        routes: {
          "/home":(context) => null,
          "/search":(context) => null,
          "/add":(context) => null,
          "/fav":(context) => null,
          "/profile":(context) => null,
          "/intro":(context) => IntroHome(),
        },
      ),

    );
  }
}

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    // return either the Home or Authenticate widget
    if (user == null){
      return LoginPage(title:"Login"); //login page
    } else {
      //return SelectGame();
      return IntroHome(); //home page
    }

  }
}