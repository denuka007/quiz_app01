import 'package:flutter/material.dart';
import 'package:quiz_app01/constants.dart';
import 'package:quiz_app01/widgets/next_button.dart';
import 'package:quiz_app01/widgets/question_widget.dart';
import '../models/questions_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Question> _questions = [
    Question(
        id: '10',
        title: 'What is 10 + 5 ?',
        options: {'5': false, '30': false, '15': true, '10': false}),
    Question(
        id: '11',
        title: 'What is 10 + 10 ?',
        options: {'5': false, '30': false, '20': true, '10': false})
  ];

  int index = 0;

  void nextQuestion() {
    if (index == _questions.length - 1) {
      return;
    } else {
      setState(() {
        index++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        //shadowColor: Colors.transparent,
        title: const Text('Quiz App'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: Column(
          children: [
            QuestionWidget(
              indexAction: index,
              question: _questions[index].title,
              totalQuestion: _questions.length,
            ),
            Divider(color: Colors.white)
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: NextButton(
          nextQuestion: nextQuestion,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
