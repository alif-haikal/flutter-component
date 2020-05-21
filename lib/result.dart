import 'package:flutter/material.dart';
import './main.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetHandler;

  Result({this.score , this.resetHandler});

  String get resultText {
    var text = "You PASSED with Score : $score";

    if (score > 12) {
      text = "you FAILED with Score : $score";
    }

    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultText,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Retake Quiz'),
            textColor: Colors.red,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
