import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 15, // size of the circle
                  backgroundColor: data['user_answer'] == data['correct_answer']
                      ? Colors.lightGreen
                      : Colors.red,
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        data['question'] as String,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(height: 5),
                      Text(
                        data['user_answer'] as String,
                        style: TextStyle(
                          color: Colors.lightGreen,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: TextStyle(color: Colors.red, fontSize: 15),
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
