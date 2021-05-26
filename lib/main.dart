import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppstate();
  }
}

class MyAppstate extends State<MyApp> {
  var questionIndex = 0;

  void answerquestion() {
    setState(() {
      questionIndex += 1;
    });
    print('answer chosen!');
    print(questionIndex);
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
          Text(question[questionIndex]),
          ElevatedButton(
            child: Text('answer 1'),
            onPressed: () {
              //anonymous function
              answerquestion();
            },
          ),
          ElevatedButton(
            child: Text('answer 2'),
            onPressed: answerquestion,
          ),
          ElevatedButton(
            child: Text('answer 3'),
            onPressed: answerquestion,
          ),
        ],
      ),
    ));
  }
}
