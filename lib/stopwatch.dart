import 'package:intl/intl.dart';

import 'package:flutter/material.dart';

class Stopwatch extends StatefulWidget {
  Duration timeout;
  Color timerColor;

  Stopwatch(this.timeout, this.timerColor);
  void allo(){
  }

  @override
  _Stopwatch createState() => _Stopwatch();
}

class _Stopwatch extends State<Stopwatch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        widget.timeout.toString().substring(2,7),
        style: TextStyle(
          fontSize: 38,
          color: widget.timerColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
