// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double n1 = 0, n2 = 0;
  String res = '0', eq = '  ', exp = '';

  //LOGIC

  calc(btnText) {
    setState(() {
      if (btnText == 'C') {
        eq = '';
        res = '0';
      } else if (btnText == '⌫') {
        eq = eq.substring(0, eq.length - 1);
        if (eq == '') eq = '0';
      } else if (btnText == "%") {
        double val = double.parse(eq);
        res = (val / 100).toString();
      } else if (btnText == '=') {
        if (n1 == 0) {
          exp = eq;
          exp = exp.replaceAll('x', '*');
          exp = exp.replaceAll('÷', '/');
          try {
            Parser p = Parser();
            Expression ex = p.parse(exp);
            ContextModel cm = ContextModel();
            res = '${ex.evaluate(EvaluationType.REAL, cm)}';

            n1 = 1;
          } catch (e) {}
        } else if (n1 == 1) {
          eq = res;
          n1 = 0;
        }
      } else {
        eq = eq + btnText;
      }
    });
  }

  Widget numbtn(String btntext, Color btnclr, Color textColor) {
    return ElevatedButton(
      onPressed: () {
        calc(btntext);
      },
      style: ElevatedButton.styleFrom(
        fixedSize: Size(70, 70),
        backgroundColor: btnclr,
        shape: CircleBorder(),
      ),
      child: Text(
        btntext,
        style: TextStyle(fontSize: 25, color: textColor),
      ),
    );
  }

  Widget numbtn1(String btntext, Color btnclr, Color textColor) {
    return ElevatedButton(
      onPressed: () {
        calc(btntext);
      },
      style: ElevatedButton.styleFrom(
        fixedSize: Size(70, 70),
        backgroundColor: btnclr,
        shape: CircleBorder(),
      ),
      child: Text(
        btntext,
        style: TextStyle(fontSize: 19, color: textColor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Calculator",
            textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //equation
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    eq,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromARGB(255, 57, 76, 152), fontSize: 35),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),

            //result
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    res,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 60),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numbtn("C", Colors.white, Colors.black),
                numbtn("⌫", Color.fromARGB(255, 143, 143, 143), Colors.black),
                numbtn("%", Color.fromARGB(255, 143, 143, 143), Colors.black),
                numbtn("÷", Color.fromARGB(255, 57, 76, 152), Colors.white),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numbtn("7", Color.fromARGB(255, 92, 92, 92), Colors.black),
                numbtn("8", Color.fromARGB(255, 92, 92, 92), Colors.black),
                numbtn("9", Color.fromARGB(255, 92, 92, 92), Colors.black),
                numbtn("x", Color.fromARGB(255, 57, 76, 152), Colors.white),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numbtn("4", Color.fromARGB(255, 92, 92, 92), Colors.black),
                numbtn("5", Color.fromARGB(255, 92, 92, 92), Colors.black),
                numbtn("6", Color.fromARGB(255, 92, 92, 92), Colors.black),
                numbtn("-", Color.fromARGB(255, 57, 76, 152), Colors.white),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numbtn("1", Color.fromARGB(255, 92, 92, 92), Colors.black),
                numbtn("2", Color.fromARGB(255, 92, 92, 92), Colors.black),
                numbtn("3", Color.fromARGB(255, 92, 92, 92), Colors.black),
                numbtn("+", Color.fromARGB(255, 57, 76, 152), Colors.white),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numbtn("0", Color.fromARGB(255, 92, 92, 92), Colors.black),
                numbtn1("00", Color.fromARGB(255, 92, 92, 92), Colors.black),
                numbtn(".", Color.fromARGB(255, 92, 92, 92), Colors.black),
                numbtn("=", Color.fromARGB(255, 57, 76, 152), Colors.white),
              ],
            ),
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
