import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s my nickname?',
      'answers': [
        {
          'text': 'Cici',
          'score': 10
        },
        {'text': 'Caca.', 'score': 0},
        {'text': 'Cipa', 'score': 0},
        {'text': 'None of these!', 'score': 0},
      ],
    },
    {
      'questionText': 'What\'s my favorite color?',
      'answers': [
        {
          'text': 'Green',
          'score': 0
        },
        {
          'text': 'Purple',
          'score': 0
        },
        {
          'text': 'Pink.',
          'score': 10
        },
        {'text': 'Blue', 'score': 0},
      ],
    },
    {
      'questionText': 'What\'s my favorite food?',
      'answers': [
        {
          'text': 'Dimsum',
          'score': 0
        },
        {
          'text': 'Sushi',
          'score': 0
        },
        {
          'text':
              'Fried Rice',
          'score': 0
        },
        {'text': 'all are correct', 'score': 10},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 239, 163, 204),
          title: Text('Get To Know Me'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}