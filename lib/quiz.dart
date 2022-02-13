import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>>? questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(this.answerQuestion, this.questions, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions![questionIndex]['questionText'] as String,
        ),
        ...(questions![questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              answerText: answer['text'] as String,
              selecthandler: () => answerQuestion(answer['score']));
        }).toList(),
      ],
    );
  }
}
