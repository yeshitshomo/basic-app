import 'package:basic_app/question.dart';
import 'package:flutter/material.dart';
import 'package:basic_app/start_screen.dart';


class Quiz extends StatefulWidget{
  const Quiz({super.key});

 @override
  State<StatefulWidget> createState() {
      return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  Widget activeScreen= const StartScreen();

  void switchScreen(){
    setState(() {
      activeScreen= const QuestionsScreen();
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 237, 157, 213),
                Color.fromARGB(255, 140, 188, 212),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    );
  }
}