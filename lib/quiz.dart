import 'package:flutter/material.dart';
import 'package:quizapp/answer.dart';
import 'package:quizapp/question.dart';

class Quiz extends StatelessWidget {
  final Function action;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  Quiz(this.questionIndex, this.questions, this.action);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionTitle: questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              answerTitle: answer['text'],
              answerAction: () => action(answer['score']));
        }).toList()
      ],
    );
  }
}
