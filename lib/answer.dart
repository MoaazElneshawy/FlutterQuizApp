import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerTitle;
  final Function answerAction;

  Answer({this.answerTitle, this.answerAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerTitle),
        onPressed: answerAction,
      ),
    );
  }
}
