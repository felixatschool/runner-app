import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiver/async.dart';
import 'package:quiver/time.dart';

import './login_screen.dart';
import './app_drawer.dart';
import 'stopwatch.dart';

class HomePage extends StatefulWidget {
  static String routeName = "/";
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  int _start = 11;
  int _current = 10;
  bool _running = false;
  Color _timerColor = Colors.black;
  Duration _remain = Duration(seconds: 10);

  void startTimer() {
    CountdownTimer countDownTimer;
    if(!_running){
      countDownTimer = new CountdownTimer(
        new Duration(seconds: _start),
        new Duration(seconds: 1),
      );
    }

    var sub = countDownTimer.listen(null);
    sub.onData((duration) {
      setState(() {
        _current = _start - duration.elapsed.inSeconds;
        _remain = countDownTimer.remaining;
      });
    });

    sub.onDone(() {
      print("Done");
      _timerColor = Colors.red;
      _remain = Duration(seconds: 0);
      _running = false;
      sub.cancel();
    });

    setState( () {
      _running = true;
      _timerColor = Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Runner")),
        drawer: AppDrawer(),
        body: Column(
          children: [
            Container(
              color: Colors.grey,
              width: double.infinity,
              height: 300,
            ),
            Divider(height: 50),
            Column(
              children: [
                Stopwatch(_remain, _timerColor),
              Divider(height: 250),
                ElevatedButton(
                  onPressed: () => startTimer(),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      primary: _running? Colors.red : Colors.green),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      _running ? 'Stop' : 'Run',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
