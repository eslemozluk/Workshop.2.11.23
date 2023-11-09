import 'package:flutter/material.dart';
import 'package:introapp_21023/data/questions.dart';
import 'package:introapp_21023/models/quiz_question.dart';

class QuestionScreen extends StatefulWidget {
  final void Function(int score) goToResultPage;

  const QuestionScreen({
    required this.goToResultPage,
    Key? key,
  }) : super(key: key);

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  List<QuizQuestion> questionFormData = questions;
  int currentQuestionIndex = 0;

  void changeQuestion() {
    setState(() {
      if (questions.length - 1 > currentQuestionIndex) currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(70, 0, 70, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(currentQuestion.question),
                  ...currentQuestion.answers.map((answer) {
                    return ElevatedButton(
                      child: Text(answer),
                      onPressed: () {
                        if (currentQuestionIndex == questions.length - 1) {
                          widget.goToResultPage(currentQuestionIndex + 1);
                        } else {
                          changeQuestion();
                        }
                      },
                    );
                  })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
