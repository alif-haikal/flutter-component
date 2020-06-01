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
  int _total_score = 0;

  static const _questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answer': [
        {'text': 'black', 'score': 8},
        {'text': 'red', 'score': 5},
        {'text': 'yellow', 'score': 3},
        {'text': 'blue', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answer': [
        {'text': 'horse', 'score': 8},
        {'text': 'snake', 'score': 5},
        {'text': 'fish', 'score': 3},
        {'text': 'rabbit', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favourite movie?',
      'answer': [
        {'text': 'Bleach', 'score': 8},
        {'text': 'Superman', 'score': 5},
        {'text': 'Batman', 'score': 3},
        {'text': 'Harry Potter', 'score': 1},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    void _resetQuiz() {
      setState(() {
        _total_score = 0;
        _questionIndex = 0;
      });
    }

    void _answerQuestion(int score) {
      _total_score += score;
      setState(() {
        _questionIndex = _questionIndex + 1;
       print('this Answer Chosen! $_questionIndex');
      });
//      print(_questions[_questionIndex]);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(
                score: _total_score,
                resetHandler: _resetQuiz,
              ),
      ),
    );
  }
}
