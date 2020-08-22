import 'package:flutter/material.dart';
import 'package:clock/clock/clock.dart';

class FirstTab extends StatelessWidget{
  DateTime time;
  @override
  Widget build(BuildContext context){
    time = DateTime.now();
    return ListView(

      children: <Widget>[
        SizedBox(
          height: 85,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Clock(
            showBellsAndLegs: false,
            showHourHandleHeartShape: false,
          ),
        ),
        SizedBox(
          height: 85,
        ),

      ],
    );
  }
}