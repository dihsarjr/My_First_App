import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MY FIRST APP'),
        ),
        body: Column(
          children: <Widget>[
            Text('The Questions!!!!'),
            RaisedButton(child: Text('Ans 1'), onPressed: null),
            RaisedButton(child: Text('Ans 2'), onPressed: null),
            RaisedButton(child: Text('Ans 3'), onPressed: null),
          ],
        ),
      ),
    );
  }
}
