import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler; // Mengubah menjadi VoidCallback

  Result(this.resultScore, this.resetHandler);

 String get resultPhrase {
  String resultText;
  if (resultScore <= 10) {
    resultText = 'You scored $resultScore. Who are you?!';
  } else if (resultScore <= 20) {
    resultText = 'You scored $resultScore. Think we are closer🤔 ';
  } else if (resultScore <= 30) {
    resultText = 'You scored $resultScore. Good Job gaise👌';
  } else {
    resultText = 'You scored $resultScore. You got me Beb😍';
  }
  return resultText;
}


  @override
Widget build(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: ElevatedButton(
            child: Text(
              'Restart Quiz!',
            ),
            onPressed: resetHandler,
          ),
        ),
      ],
    ),
  );
}


}
