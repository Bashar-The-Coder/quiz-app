// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(MyaApp());

class MyaApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyaAppState();
  }
}

class MyaAppState extends State<MyaApp> {
  var questionIndex = 0;
  var disable = false;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
      if (questionIndex == 7) {
        disable = true;
      }
      print(questionIndex);
    });
  }

  void reset() {
    setState(() {
      disable = false;
      questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    var questions = [
      'what|s your fabourite color',
      'whats your favourite animal',
      'whats your favourite dish',
      'whats your favourite dis',
      'whats your favourite di',
      'whats your favourite di',
      'whats your favourite di',
      'whats your favourite dis',
      'whats your favourite dish',
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('My First APP'),
      ),
      body: Column(
        children: [
          Text(questions[questionIndex]),
          ElevatedButton(
            onPressed: disable == true ? null : answerQuestion,
            child: Text("button One"),
          ),
          ElevatedButton(
              onPressed: disable == true ? null : answerQuestion,
              // ignore: prefer_const_constructors
              child: Text("button Two")),
          ElevatedButton(
              onPressed: disable == true ? null : answerQuestion,
              // ignore: prefer_const_constructors
              child: Text("button Three")),
          ElevatedButton(onPressed: reset, child: Text("reset BUtton"))
        ],
      ),
    ));
  }
}
