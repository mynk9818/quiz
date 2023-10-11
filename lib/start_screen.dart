import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'LEARN FLUTTER EASILY',
            style: TextStyle(
                color: Color.fromARGB(255, 237, 223, 252), fontSize: 24),
          ),
          const SizedBox(
            height: 25,
          ),
          OutlinedButton(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              child: const Text('START QUIZ'))
        ],
      ),
    );
  }
}
