import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}

class MainStream {
  void hello() {
    print("hello world");
  }
}

class sMainStream extends MainStream {
  void hello() {
    print("hello world");
  }
}

class fivesMainStream extends MainStream {
  void hello() {
    print("hello world");
  }
}

class six extends MainStream {
  void hello() {
    print("hello world");
  }
}