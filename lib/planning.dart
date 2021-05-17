import 'package:flutter/material.dart';

import './app_drawer.dart';

class Planning extends StatefulWidget {
  static String routeName = '/planning';
  @override
  _PlanningState createState() => _PlanningState();
}

class _PlanningState extends State<Planning> {
  bool _walkSelect = true;

  void clickHandler(String button) {
    if(button == "walk" && _walkSelect == false) setState( () => _walkSelect = true);
    else if(button == "run" && _walkSelect == true) setState( () =>_walkSelect = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Planning')),
      drawer: AppDrawer(),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => clickHandler("walk"),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      'Walk',
                      style: TextStyle(
                        color: _walkSelect ? Colors.green : Colors.black,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => clickHandler("run"),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      'Run',
                      style: TextStyle(
                        color: _walkSelect? Colors.black: Colors.green,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
