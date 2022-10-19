import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/quiz.dart';
import 'package:flutter_demo/result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
    if (kDebugMode) {
      print('Answer Chosen!');
    }
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Red', 'score': 5},
          {'text': 'Green', 'score': 3},
          {'text': 'White', 'score': 1}
        ],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'Rabbit', 'score': 10},
          {'text': 'Snake', 'score': 5},
          {'text': 'Elephant', 'score': 3},
          {'text': 'Lion', 'score': 1}
        ],
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': [
          {'text': 'Max', 'score': 10},
          {'text': 'Max', 'score': 5},
          {'text': 'Max', 'score': 3},
          {'text': 'Max', 'score': 1}
        ],
      },
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My First App'),
          ),
          body: _questionIndex < questions.length
              ? Quiz(
                  questions: questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex)
              : Result(resultScore: _totalScore, resetHandler: _resetQuiz)),
    );
  }
}
