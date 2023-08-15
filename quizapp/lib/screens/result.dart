// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quizapp/main.dart';

class result extends StatefulWidget {
  final int score;
  const result(this.score, {super.key});

  @override
  State<result> createState() => _resultState();
}

class _resultState extends State<result> {
  @override
  Widget build(BuildContext context) {
    Color right = Color.fromARGB(255, 119, 232, 136);
    Color wrong = Color.fromARGB(255, 255, 133, 133);
    Color one = Color.fromARGB(255, 39, 95, 109);
    Color two = Color.fromARGB(255, 144, 233, 255);
    Color three = Color.fromARGB(255, 39, 212, 255);

    String i = "${widget.score}";
    String grade;
    print(i);
    int n = int.parse(i);
    print(n);

    if (n >= 16)
      grade = "Congratulations!!";
    else if (n >= 12 && n < 16)
      grade = "Good Try!";
    else if (n >= 8 && n < 12)
      grade = "Not Bad!";
    else
      grade = "Oops!";

    return Scaffold(
      backgroundColor: one,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              grade,
              style: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 45.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              "your score is :",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Text(
              "${widget.score}/20",
              style: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 38.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 70.0,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homepage()));
              },
              height: 50.0,
              color: three,
              shape: StadiumBorder(),
              child: Text(
                "Try Again",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
