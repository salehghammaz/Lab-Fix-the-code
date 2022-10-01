import 'package:flutter/material.dart';
import 'package:myapp/component/check.dart';

class Question extends StatefulWidget {
  Question({
    required this.question,
    required this.answer1,
    required this.answer2,
    required this.answer3,
    required this.answer4,
    required this.correct,
  });
  bool val = false;
  String l = "";
  String correct;
  String question;
  String answer1;
  String answer2;
  String answer3;
  String answer4;

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(35))),
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.only(top: 40, right: 50, left: 50, bottom: 20),
            child: Column(
              children: [
                Text(
                  "${widget.question}",
                  style: TextStyle(
                      fontSize: 23,
                     color: Color.fromARGB(255, 48, 7, 55),
                      fontFamily: "PlayfairDisplay"),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(44, 188, 20, 101),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: RadioListTile(
                      activeColor: Colors.purple,
                      title: Text(
                        " ${widget.answer1}",
                        style: TextStyle(
                             color: Color.fromARGB(255, 69, 2, 81),
                            fontFamily: "PlayfairDisplay"),
                      ),
                      value: widget.answer1,
                      groupValue: widget.l,
                      onChanged: (val) {
                        setState(() {
                          widget.l = val.toString();
                        });
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(44, 188, 20, 101),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: RadioListTile(
                      activeColor: Colors.purple,
                      title: Text(
                        "${widget.answer2}",
                        style: TextStyle(
                             color: Color.fromARGB(255, 69, 2, 81),
                            fontFamily: "PlayfairDisplay"),
                      ),
                      value: widget.answer2,
                      groupValue: widget.l,
                      onChanged: (val) {
                        setState(() {
                          widget.l = val.toString();
                        });
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(44, 188, 20, 101),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: RadioListTile(
                      activeColor: Colors.purple,
                      title: Text(
                        "${widget.answer3}",
                        style: TextStyle(
                             color: Color.fromARGB(255, 69, 2, 81),
                            fontFamily: "PlayfairDisplay"),
                      ),
                      value: widget.answer3,
                      groupValue: widget.l,
                      onChanged: (val) {
                        setState(() {
                          widget.l = val.toString();
                        });
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(44, 188, 20, 101),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: RadioListTile(
                      activeColor: Colors.purple,
                      title: Text(
                        "${widget.answer4}",
                        style: TextStyle(
                             color: Color.fromARGB(255, 69, 2, 81),
                            fontFamily: "PlayfairDisplay"),
                      ),
                      value: widget.answer4,
                      groupValue: widget.l,
                      onChanged: (val) {
                        setState(() {
                          widget.l = val.toString();
                        });
                      }),
                ),
              ],
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // <-- Radius
                  )),
              onPressed: () {
                if (widget.l != "") check(widget.correct, widget.l, context);
              },
              child: Text(
                "Check Answer",
                style: TextStyle(
                    fontSize: 20,
                      color: Color.fromARGB(255, 69, 2, 81),
                    fontFamily: "PlayfairDisplay"),
              )),
        ],
      ),
    );
  }
}
