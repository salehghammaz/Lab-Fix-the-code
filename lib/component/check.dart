import 'package:flutter/material.dart';

void check(String correct, String answer, BuildContext context) {
  if (answer == correct) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Color.fromARGB(255, 141, 67, 154),
            actions: [
              Text(
                "Correct Answer",
                style: TextStyle(
                    color: Colors.white, fontFamily: "PlayfairDisplay"),
              ),
              Icon(
                Icons.check,
                color: Colors.white,
              )
            ],
          );
        });
  } else {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor:  Color.fromARGB(255, 141, 67, 154),
            actions: [
              Text(
                "Try Again",
                style: TextStyle(
                    color: Colors.white, fontFamily: "PlayfairDisplay"),
              ),
              Icon(
                Icons.clear,
                color: Colors.white,
              )
            ],
          );
        });
  }
}
