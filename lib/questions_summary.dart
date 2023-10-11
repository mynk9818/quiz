import 'package:flutter/material.dart';
import 'package:quiz/summary.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<SummaryAns> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Text(((data.questionIndex) + 1).toString(),
                    style: const TextStyle(color: Colors.white)),
                Expanded(
                  child: Column(
                    children: [
                      Text(data.question,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 128, 187, 189))),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(data.correctAnswer,
                          style: const TextStyle(color: Colors.white))
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
