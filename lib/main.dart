import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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

  static const questions = [
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
      if (_questionIndex < questions.length) {

      }
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
        body: _questionIndex < questions.length ? Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answer'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ) : Center(child: Text('You Finish The Quiz!'),),
      ),
    );
  }
}
