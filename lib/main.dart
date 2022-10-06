import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    if (kDebugMode) {
      print('Answer Chosen!');
    }
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[_questionIndex]),
            ElevatedButton(
                onPressed: _answerQuestion, child: const Text('Answer 1')),
            ElevatedButton(
                onPressed: () {
                  if (kDebugMode) {
                    print('Damn boy');
                  }
                },
                child: const Text('Answer 2')),
            ElevatedButton(
                onPressed: () {
                  if (kDebugMode) {
                    print('Damn boy');
                  }
                },
                child: const Text('Answer 3')),
          ],
        ),
      ),
    );
  }
}
