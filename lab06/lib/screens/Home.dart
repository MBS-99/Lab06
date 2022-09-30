import 'package:flutter/material.dart';
import 'package:lab06/screens/QuizPage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("images/home1.jpg"),
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Image.asset(
                "images/quiz1.png",
                width:
                    200, // I adjusted the width according to my mobile screen it maybe overflowed on other mobiles or emulators.
                height: 200,
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                textAlign: TextAlign.center,
                "Test yourself in English\nAnd take Quizes",
                style: TextStyle(
                    fontSize: 30, color: Colors.white, fontFamily: "Schyler"),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Quiz();
                    }));
                  });
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Start Now",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: "Schyler"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.arrow_forward)
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30),
                  ),
                  backgroundColor: Color.fromARGB(255, 39, 47, 120),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
