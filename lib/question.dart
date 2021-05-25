import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // attribute will never change
  final String questionText;

  // constructor
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    // Container: child < padding < border < margin
    return Container(
      // take as much width as possible
      width: double.infinity,
      margin: EdgeInsets.all(10),
      // child == content
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
