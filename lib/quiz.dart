import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function _answerquestion;
  final List<Map<String, Object>> _questions;
  final int _questionIndex;

  Quiz(this._questions, this._questionIndex, this._answerquestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: _questions[_questionIndex]['questionText'],
        ),

        ...(_questions[_questionIndex]['answers'] as List<Map<String, Object>>)
            .map(
          (ans) {
            return Answer(
                onpressFunc: () {
                  _answerquestion(ans['score']);
                },
                textOnButton: ans['text']);
          },
        ),

        // ...[
        //   for (String ans in questions[_questionIndex]['answer'])
        //     Answer(onpressFunc: _answerquestion, textOnButton: ans)
        // ] // same as above but using list comprehension, ... aka spread operator
      ],
    );
  }
}
