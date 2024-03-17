import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler; // Mengubah menjadi VoidCallback

  Result(this.resultScore, this.resetHandler);

 String get resultPhrase {
  String resultText;
  if (resultScore <= 8) {
    resultText = 'You scored $resultScore. Who are you?!';
  } else if (resultScore <= 12) {
    resultText = 'You scored $resultScore. Think we are closer🤔 ';
  } else if (resultScore <= 16) {
    resultText = 'You scored $resultScore. Good Job gaise😘';
  } else {
    resultText = 'You scored $resultScore. You got me Beb😍❤️';
  }
  return resultText;
}


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase + '/30',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            child: Text(
              'Restart Quiz!',
            ),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
