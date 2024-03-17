import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        SizedBox(height: 10), // Menambahkan jarak vertikal antara pertanyaan dan jawaban
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20), // Memberikan margin horizontal pada jawaban
          child: Column(
            children: (questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 5), // Memberikan jarak vertikal antara jawaban
                child: Answer(() => answerQuestion(answer['score'] as int), answer['text'] as String),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
