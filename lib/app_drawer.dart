import 'package:flutter/material.dart';

import './home_page.dart';
import './planning.dart';

class AppDrawer extends StatelessWidget {
  void clickHandler(BuildContext context, String screen) {
    Navigator.pushReplacementNamed(context, screen);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 300,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(
            child: Text(
              'Run',
              style: TextStyle(fontSize: 18),
            ),
            onPressed: () => clickHandler(context, HomePage.routeName),
          ),
          FlatButton(
            child: Text(
              'Planning',
              style: TextStyle(fontSize: 18),
            ),
            onPressed: () => clickHandler(context, Planning.routeName),
          ),
          FlatButton(
            child: Text(
              'History',
              style: TextStyle(fontSize: 18),
            ),
            onPressed: () => clickHandler(context, Planning.routeName),
          ),
      SizedBox(height: 500,),
        ],
      ),
    );
  }
}
