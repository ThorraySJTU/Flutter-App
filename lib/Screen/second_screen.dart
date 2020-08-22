import 'package:flutter/material.dart';
import 'package:clock/Calendar//flutter_calendar.dart';

class SecondTab extends StatelessWidget {
  void handleNewDate(date) {
    print("handleNewDate ${date}");
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Flutter Demo',
      //theme: new ThemeData(
        //brightness: Brightness.dark,
        //primarySwatch: Colors.purple,
      //),
      home: new Scaffold(
        //appBar: new AppBar(
          //title: new Text('Flutter Calendar'),
        //),
        body: new Container(
          //margin: new EdgeInsets.symmetric(
            //horizontal: 5.0,
            //vertical: 10.0,
          //),
          child: new ListView(
            shrinkWrap: true,
            children: <Widget>[
              //new Text('Calendar:'),
              new Calendar(
                onSelectedRangeChange: (range) =>
                    print("Range is ${range.item1}, ${range.item2}"),
                isExpandable: true,
              ),
              new Divider(
                height: 50.0,
              ),

            ],
          ),
        ),
      ),
    );
  }
}