import 'package:flutter/material.dart';
import 'package:second_app/start_screen.dart';
import 'package:second_app/questions_screen.dart';
import 'package:second_app/data/questions.dart';
import 'package:second_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var currentScreen = 'start-screen';
  List<String> answers = [];

  /*
  Widget? currentWidget;
  //there is also the Ternary expression aproach
  @override
  void initState() {
    currentWidget = StartScreen(switchScreen);
    super.initState();
  }*/

  void switchScreenHome() {
    setState(() {
      //currentWidget = Questions();
      currentScreen = 'question-screen';
    });
  }

  void reStart() {
    setState(() {
      answers = [];
      currentScreen = 'start-screen';
    });
  }

  void chooseAnswer(String selectedAnswer){
    answers.add(selectedAnswer);
    if(answers.length == questions.length){
      setState(() {
        currentScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(context) {

    Widget screenWidget = StartScreen(switchScreenHome);

    if(currentScreen == 'question-screen'){
      screenWidget = QuestionsScreen(chooseAnswer);
    }

    if(currentScreen == 'result-screen'){
      screenWidget = ResultScreen(answers, reStart);
    }

    if(currentScreen == 'start-screen'){
      screenWidget = StartScreen(switchScreenHome);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 116, 105, 240),
                Color.fromARGB(255, 49, 3, 123),
              ],
            ),
          ),
          child: screenWidget
        ),
      ),
    );
  }
}
