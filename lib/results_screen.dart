import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/questions_summary.dart';
import 'package:quiz/summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
  });
  final List<String> chosenAnswers;

  List<SummaryAns> get summaryData {
    final List<SummaryAns> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(SummaryAns(
          correctAnswer: questions[i].answers[0],
          questionIndex: i,
          userAnswer: chosenAnswers[i],
          question: questions[i].text));
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numberTotalQuestion = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data.userAnswer == data.correctAnswer;
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'you answered $numCorrectQuestions of $numberTotalQuestion correctly'),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: const Text('Restart quiz!')),
          ],
        ),
      ),
    );
  }
}
