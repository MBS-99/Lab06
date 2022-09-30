import 'package:flutter/material.dart';
import 'package:lab06/Components/Question.dart';
import 'package:lab06/Components/Choice.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Image.asset(
            "images/quiz1.png",
            width: 100,
            height: 100,
          ),
          flexibleSpace: Image(
            image: AssetImage("images/home1.jpg"),
            fit: BoxFit.cover,
          ),
          bottom: TabBar(tabs: [Text("Vocabulary"), Text("Grammar")]),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/qq.jpg"), fit: BoxFit.cover),
          ),
          child: TabBarView(children: [
            ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                MyQuestion("Q1: What is the synonym of\n\"propitious\" ?",
                    "A- Favorable", "B- Slippery", "C- Likely", "A- Favorable"),
                SizedBox(
                  height: 15,
                ),
                MyQuestion("Q2: Which is a synonym of \"pernicious\"",
                    "A- Warlike", "B- Deadly", "C- Bloody", "B- Deadly"),
                SizedBox(
                  height: 15,
                ),
                MyQuestion("Q3: Which is a synonym of \"perfidy\" ?",
                    "A- Custody", "B- Betrayal", "C- Quality", "B- Betrayal")
              ],
            ),
            ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                MyQuestion("Q1- He___born in 1963 in Jordan ", "A- had",
                    "B- is", "C- was", "C- was"),
                SizedBox(
                  height: 15,
                ),
                MyQuestion(
                    "Q2: Did she stay with friends ?___",
                    "A- No, she didn't",
                    "B- No, she didn't stay",
                    "C- No she didn't stayed",
                    "A- No, she didn't"),
                MyQuestion("Q3: She has never ___ to Irbid. ", "A- gone",
                    "B- went", "C- been", "C- been")
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
