import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// _ infront of class name means private
class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  static const _questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answer': ['black', 'red', 'yellow', 'blue']
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answer': ['horse', 'snake', 'fish', 'rabbit']
    },
    {
      'questionText': 'What\'s your favourite movie?',
      'answer': ['Bleach', 'Superman', 'Batman', 'Harry Potter']
    },
  ];

  @override
  Widget build(BuildContext context) {
    void _answerQuestion() {
      if (_questionIndex < _questions.length) {}
      setState(() {
        _questionIndex = _questionIndex + 1;
        print('this Answer Chosen! $_questionIndex');
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App2'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
