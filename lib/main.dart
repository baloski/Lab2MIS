import 'package:flutter/material.dart';
import 'package:lab2/question.dart';
import 'answer.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final questionsAndAnswers = [
    {'question': 'Select Shirt', 'answer': ['Nike Shirt', 'Adidas Shirt', 'Puma Shirt']},
    {'question': 'Select Pants', 'answer': ['Nike Pants', 'Adidas Pants', 'Puma Pants']},
    {'question': 'Select Shoes', 'answer': ['Nike Shoes', 'Adidas Shoes', 'Puma Shoes']},
    {'question': 'Select Shorts', 'answer': ['Nike Shorts', 'Adidas Shorts', 'Puma Shorts']},
  ];
  final questions = ["q1", "q2", "q3", "q4", "q5"];
  int _questionsIndex = 0;

  void _incrementCounter() {
    setState(() {
      _questionsIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("191189"),
        ),
        body: Column(
          children: [
            ClothesQuestion(questionsAndAnswers[_questionsIndex]['question'] as String),
            ...(questionsAndAnswers[_questionsIndex]['answer'] as List<String>)
                .map((answer) {
              return ClothesAnswer(_incrementCounter, answer);
            }),
          ],
        ),
      ),
    );
  }
}