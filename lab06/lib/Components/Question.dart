import 'package:flutter/material.dart';
import 'package:lab06/Components/Choice.dart';

class MyQuestion extends StatefulWidget {
  const MyQuestion(this.questionText, this.choice1, this.choice2, this.choice3,
      this.rightChoice);
  final String? questionText;
  final String? choice1;
  final String? choice2;
  final String? choice3;
  final String? rightChoice;

  @override
  State<MyQuestion> createState() => _MyQuestionState();
}

class _MyQuestionState extends State<MyQuestion> {
  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 81, 159, 206),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        height: 430,
        width: // I adjusted the width according to my mobile screen it maybe overflowed on other mobiles or emulators.
            350,
        child: Column(
          children: [
            Text(
              widget.questionText!,
              style: TextStyle(
                fontSize: 30,
                fontFamily: "Schyler",
                // color: Colors.white
              ),
            ),
            SizedBox(
              height: 15,
            ),
            MyChoice(widget.choice1, widget.rightChoice),
            MyChoice(widget.choice2, widget.rightChoice),
            MyChoice(widget.choice3, widget.rightChoice)
          ],
        ),
      ),
    );
  }
}
