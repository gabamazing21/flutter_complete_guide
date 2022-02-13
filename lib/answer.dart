import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String? answerText;
  final VoidCallback? selecthandler;

  Answer({this.selecthandler, this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selecthandler,
        child: Text(answerText!),
      ),
    );
  }
}
