import 'package:flutter/material.dart';
import 'package:quizapp/quiz.dart';
import 'package:quizapp/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String appTitle = "Quiz App";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _questionIndex = 0;
  int _score = 0;

  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Yellow', 'score': 8},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite car?',
      'answers': [
        {'text': 'BMW', 'score': 10},
        {'text': 'MG', 'score': 7},
        {'text': 'Rolls-Royce', 'score': 1},
        {'text': 'Corvette', 'score': 10},
      ]
    },
    {
      'questionText': 'What\'s your favorite city?',
      'answers': [
        {'text': 'London', 'score': 10},
        {'text': 'Cairo', 'score': 6},
        {'text': 'Paris', 'score': 4},
        {'text': 'Singapore', 'score': 1},
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(widget.title),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questionIndex, _questions, _getNextQuestion)
            : Result('Your score is $_score', _restart));
  }

  void _getNextQuestion(int score) {
    _score += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _restart() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }
}
