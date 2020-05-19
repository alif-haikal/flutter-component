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

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      print('this Answer Chosen! $_questionIndex');
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App2'),
        ),
        body: Column(
          children:[
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answer'] as List<String>).map((answer){
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
