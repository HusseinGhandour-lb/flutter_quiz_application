import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen,{super.key});

  final void Function() switchScreen;
  
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assests/images/quiz-logo.png', width: 200, color: const Color.fromARGB(171, 255, 255, 255),),
          SizedBox(height: 80),
          Text(
            'Flutter Quiz',
            style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: switchScreen,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: Icon(Icons.arrow_forward),
            label: Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
