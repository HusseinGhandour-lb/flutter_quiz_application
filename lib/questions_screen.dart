import 'package:flutter/material.dart';
import 'package:second_app/button_widget.dart';
import 'package:second_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.chooseAnswer ,{super.key});
  final void Function(String selectedAnswer) chooseAnswer;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  
  var currentQuestionIndex = 0;
  void answerQuestion(String selectedAnswer){
    widget.chooseAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;//possible error when refreshing
    });
  }

  @override
  Widget build(BuildContext context) {

    final currentQuestion = questions[currentQuestionIndex];
    if(currentQuestionIndex == questions.length){
      currentQuestionIndex = 0;
    }
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.text, style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer){
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ButtonWidget(answer, (){answerQuestion(answer);}),
              );
            }),
          ],
        ),
      ),
    );
  }
}
