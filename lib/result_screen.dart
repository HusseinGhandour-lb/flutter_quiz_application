import 'package:flutter/material.dart';
import 'package:second_app/data/questions.dart';
import 'package:second_app/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.selectedAnswer, this.switchScreenResult, {super.key});
  final List<String> selectedAnswer;
  final void Function() switchScreenResult;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedAnswer[i],
      });
    }
    return summary;
  }//possible error when restarting

  @override
  Widget build(context) {
    final numTotalQuestions = questions.length;
    final summaryData = getSummaryData();
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    /*
    final colorCircle = summaryData.map((data) {
      if(data['user_answer'] == data['correct_answer']){
        return Colors.lightGreen;
      }
      return Colors.red;
    }).toList();*/

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'You have $numCorrectQuestions out of $numTotalQuestions are correct',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            SizedBox(height: 40),
            QuestionSummary(summaryData),
            SizedBox(height: 30),
            TextButton.icon(onPressed: switchScreenResult, icon: Icon(Icons.restart_alt_sharp), style: TextButton.styleFrom(foregroundColor: Colors.white, iconSize: 50),label: Text('Try again', style: TextStyle(fontSize: 40),),),
          ],
        ),
      ),
    );
  }
}
