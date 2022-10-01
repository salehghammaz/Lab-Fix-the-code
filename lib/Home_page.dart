import 'package:flutter/material.dart';
import 'package:myapp/Quiz.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://i0.wp.com/i.pinimg.com/originals/b5/0e/af/b50eafe8500a6d61acca6d9b7bea54a2.jpg"))),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Row(
              children: [
                SizedBox(
                  width: 100,
                ),
                Text(
                  "Quiz",
                  style: TextStyle(fontSize: 30,fontFamily: "PlayfairDisplay"),
                ),
              ],
            ),
            backgroundColor: Colors.transparent,
          ),
          drawer: Drawer(),
          body: Center(
              child: Column(
            children: [SizedBox(height: 243,),
              SizedBox(height: 20),
              ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), // <-- Radius
                        )),
                    onPressed: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Quiz();
                          },
                        ));
                      });
                    },
                    child: Text(
                      " Start Now ",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.purple,
                          fontFamily: "PlayfairDisplay"),
                    )),
              
            ],
          ))),
    );
  }
}
