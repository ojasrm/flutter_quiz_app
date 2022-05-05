import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(
    this.resultScore,
    this.resetHandler,
  );

  String get resultPhrase {
    String resultText;
    if (resultScore > 2) {
      resultText = 'All correct! You are a moviebuff!';
    } else if (resultScore > 1) {
      resultText = 'Two correct!';
    } else if (resultScore > 0) {
      resultText = 'One correct!';
    } else {
      resultText = 'None Correct';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text(
              'Restart Quiz',
            ),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
