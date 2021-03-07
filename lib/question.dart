import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  final String questionTitle;

  const Question({this.questionTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        questionTitle,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
