import 'package:flutter/material.dart';

class QuizMain extends StatefulWidget {
  @override
  _QuizMainState createState() => _QuizMainState();
}

class _QuizMainState extends State<QuizMain> {
  List<Widget> scoreKeeper = [];

  List<String> question = [
    "A tsunami wave can travel the speed of a jet.", //true
    "The snow on Venus is metal.", //true
    "While sleeping, you cannot smell anything.", //true
    "The shortest war in history lasted for only 52 minutes.", //false
    "Only female mosquitos bite." //true
  ];

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Text(
                  question[questionNumber],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                child: Text(
                  'True',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                onPressed: () {
                  setState(
                    () {
                      questionNumber++;
                      scoreKeeper.add(
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      );
                    },
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                child: Text(
                  'False',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    scoreKeeper.add(
                      Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                    );
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
              ),
            ),
          ),
          Row(
            children: scoreKeeper,
          )
        ],
      ),
    );
  }
}
