import 'package:firstapp/questions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void ansQuestion() {
    setState(() {
      questionIndex++;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    void myQuestionFunction() {}

    var question = [
      'what is your favorite color',
      'what is your favorite animal',
      'what is your favorite car',
      'what is your favorite bike',
      'what is your favorite brand',
      'what is your favorite football player',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('MY FIRST APP'),
        ),
        body: Column(
          children: <Widget>[
            Questions(question[questionIndex]),
            RaisedButton(
              color: Colors.green,
              child: Text('Ans 1'),
              onPressed: () {
                ansQuestion();
              },
            ),
            RaisedButton(
              color: Colors.red,
              child: Text('Ans 2'),
              onPressed: () {
                ansQuestion();
              },
            ),
            RaisedButton(
              color: Colors.blue,
              child: Text('Ans 3'),
              onPressed: () {
                ansQuestion();
              },
            ),
          ],
        ),
      ),
    );
  }
}
