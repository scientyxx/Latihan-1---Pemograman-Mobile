import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler; // Mengubah menjadi VoidCallback
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 208, 184, 201)), // Mengubah properti primary menjadi backgroundColor
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
