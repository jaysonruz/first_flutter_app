import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

//

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppstate();
  }
}

class _MyAppstate extends State<MyApp> {
  var _questionIndex = 0;

  void _answerquestion() {
    setState(() {
      _questionIndex += 1;
    });
    print('answer chosen!');
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    List question = [
      'whats\'s your favorite color?',
      'what\'s your favorite animal'
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("my first app"),
      ),
      body: Column(
        children: [
          Question(questionText: question[_questionIndex],),
          ElevatedButton(
            child: Text('answer 1'),
            onPressed: () {
              //anonymous function
              _answerquestion();
            },
          ),
          ElevatedButton(
            child: Text('answer 2'),
            onPressed: _answerquestion,
          ),
          ElevatedButton(
            child: Text('answer 3'),
            onPressed: _answerquestion,
          ),
        ],
      ),
    ));
  }
}
