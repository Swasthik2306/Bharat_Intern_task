import 'package:flutter/material.dart';
import 'package:quizapp/data/question-list.dart';
import 'package:quizapp/screens/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  Color one = Color.fromARGB(255, 39, 95, 109);
  Color two = Color.fromARGB(255, 144, 233, 255);
  Color three = Color.fromARGB(255, 39, 212, 255);

  PageController? _controller = PageController(initialPage: 0);

  bool isPressed = false;
  Color right = Color.fromARGB(255, 119, 232, 136);
  Color wrong = Color.fromARGB(255, 255, 133, 133);
  Color btncolor = Color.fromARGB(255, 144, 233, 255);

  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: one,
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: _controller!,
          onPageChanged: (page) {
            setState(() {
              isPressed = false;
            });
          },
          itemCount: questions.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Question ${index + 1}/${questions.length}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 35.0,
                    ),
                  ),
                ),
                Divider(
                  color: two,
                  height: 8.0,
                  thickness: 1.0,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  questions[index].question!,
                  style: TextStyle(
                    color: two,
                    fontSize: 22.0,
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                for (int i = 0; i < questions[index].answers!.length; i++)
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 12.0),
                    child: MaterialButton(
                      shape: StadiumBorder(),
                      color: isPressed
                          ? questions[index].answers!.entries.toList()[i].value
                              ? right
                              : wrong
                          : two,
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      onPressed: isPressed
                          ? () {}
                          : () {
                              setState(() {
                                isPressed = true;
                              });
                              if (questions[index]
                                  .answers!
                                  .entries
                                  .toList()[i]
                                  .value) {
                                score +=1;
                                print(score);
                              }
                            },
                      child: Text(
                        questions[index].answers!.keys.toList()[i],
                        style: const TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                const SizedBox(
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RawMaterialButton(
                     onPressed: () {
                      if (_controller!.page?.toInt() == questions.length - 1) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => result(score)));
                      } else {
                        _controller!.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOutExpo);

                        setState(() {
                          isPressed = false;
                        });
                      }
                    },
                  
                      shape: StadiumBorder(),
                      splashColor: two,
                      fillColor: three,
                      padding: EdgeInsets.all(18.0),
                      elevation: 0.0,
                      child: Text(
                          index+1 == questions.length
                              ? "See Result"
                              : "Next Question",
                          style: TextStyle(
                            color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16.0,
                          )),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
