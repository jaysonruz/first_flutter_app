import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String textOnButton;
  final Function onpressFunc;

  Answer({@required this.onpressFunc, @required this.textOnButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        child: Text(textOnButton),
        onPressed: () {
          //anonymous function
          onpressFunc();
        },
      ),
    );
  }
}
