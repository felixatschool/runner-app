import 'package:flutter/material.dart';
import 'home_page.dart';

import './login_screen.dart';
import './planning.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "Runner",
      theme: new ThemeData(primarySwatch: Colors.red),
      routes: {
      '/' : (context) => HomePage(),
      LoginScreen.routeName : (context) => HomePage(),
      Planning.routeName : (context) => Planning(),
      },
    );
  }
}

