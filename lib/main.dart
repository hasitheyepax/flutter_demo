import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
    print('Answer Chosen!');
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
            Text(questions[questionIndex]),
            ElevatedButton(
                onPressed: answerQuestion, child: const Text('Answer 1')),
            ElevatedButton(
                onPressed: () => print('Answer 2 chosen!'),
                child: const Text('Answer 2')),
            ElevatedButton(
                onPressed: () {
                  print('Damn boy');
                },
                child: const Text('Answer 3')),
          ],
        ),
      ),
    );
  }
}
