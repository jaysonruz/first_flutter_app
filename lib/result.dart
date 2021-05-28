import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("you did it! \n your score is $totalScore!"),
        TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.amber),
          ),
          child: Text('Restart Quiz'),
          onPressed: () {
            resetQuiz();
          },
        )
      ],
    );
  }
}
//
