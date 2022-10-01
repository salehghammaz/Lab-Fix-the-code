import 'package:flutter/material.dart';
import 'package:myapp/component/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  bool val = false;
  String l = "";
  String answer1 = "5";
  String answer2 = "3";
  String answer3 = "4";
  String answer4 = "7";

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://i0.wp.com/i.pinimg.com/originals/b5/0e/af/b50eafe8500a6d61acca6d9b7bea54a2.jpg"))),
      child: DefaultTabController(
        length: 6,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(
                  child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "Q1",
                  style: TextStyle(
                      color: Color.fromARGB(255, 69, 2, 81),
                      fontFamily: "PlayfairDisplay"),
                ),
              )),
              Tab(
                  child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "Q2",
                  style: TextStyle(
                      color: Color.fromARGB(255, 69, 2, 81),
                      fontFamily: "PlayfairDisplay"),
                ),
              )),
              Tab(
                  child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "Q3",
                  style: TextStyle(
                      color: Color.fromARGB(255, 69, 2, 81),
                      fontFamily: "PlayfairDisplay"),
                ),
              )),
              Tab(
                  child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "Q4",
                  style: TextStyle(
                      color: Color.fromARGB(255, 69, 2, 81),
                      fontFamily: "PlayfairDisplay"),
                ),
              )),
              Tab(
                  child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "Q5",
                  style: TextStyle(
                      color: Color.fromARGB(255, 69, 2, 81),
                      fontFamily: "PlayfairDisplay"),
                ),
              )),
              Tab(
                  child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "Q6",
                  style: TextStyle(
                      color: Color.fromARGB(255, 69, 2, 81),
                      fontFamily: "PlayfairDisplay"),
                ),
              )),
            ]),
            title: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "General Questions",
                  style: TextStyle(fontSize: 30, fontFamily: "PlayfairDisplay"),
                ),
              ],
            ),
            backgroundColor: Colors.transparent,
          ),
          body: TabBarView(
            children: [
              Question(
                question: "What country has the highest life expectancy?",
                answer1: " Ireland",
                answer2: "Scotland",
                answer3: "Hong Kong",
                answer4: "Sweden",
                correct: "Hong Kong",
              ),
              Question(
                question: "How many elements are in the periodic table? ",
                answer1: "110",
                answer2: "90",
                answer3: "150",
                answer4: "118",
                correct: "118",
              ),
              Question(
                question: "What was Meta Platforms Inc formerly known as?",
                answer1: "Tiktok",
                answer2: "Facebook",
                answer3: "Snapchat",
                answer4: "Youtube",
                correct: "Facebook",
              ),
              Question(
                question: "What is the capital of Argentina?",
                answer1: "Algiers",
                answer2: "Luanda",
                answer3: "Vienna",
                answer4: "Buenos Aires",
                correct: "Buenos Aires",
              ),
              Question(
                question: "How many rings is the Olympic symbol made up of?",
                answer1: "Five",
                answer2: "Four",
                answer3: "Two",
                answer4: "One",
                correct: "Five",
              ),
              Question(
                question: "Which sport takes place in a Velodrome?",
                answer1: "Cycling",
                answer2: "Football",
                answer3: "Gymnastics",
                answer4: "Swimming",
                correct: "Cycling",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
