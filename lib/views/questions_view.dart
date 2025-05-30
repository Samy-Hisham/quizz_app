import 'package:flutter/material.dart';
import 'package:quizz_app/model/question-manager.dart';
import 'package:quizz_app/model/question_model.dart';
import 'package:quizz_app/widget/custon_background.dart';
import 'package:quizz_app/widget/question_item.dart';
import 'package:quizz_app/widget/questions_action_button.dart';
import '../styles/app_colors.dart';

class QuestionsView extends StatefulWidget {
  const QuestionsView({super.key});

  @override
  State<QuestionsView> createState() => _QuestionsViewState();
}

class _QuestionsViewState extends State<QuestionsView> {
  int currentIndex = 0;
  QuestionManager questionManager = QuestionManager(questions);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: CustonBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                QuestionItem(

                  questionManager: questionManager,
                  question: questionManager.questions[currentIndex],
                  index: currentIndex,
                ),
                Padding(
                  // refactor height
                  padding: const EdgeInsets.only(top: 150.0),
                  child: QuestionsActionButtons(
                    onBackPressed: () {
                      setState(() {
                        //validation
                        if (currentIndex == 0) {
                          return;
                        }
                        currentIndex--;
                      });
                    },
                    onNextPressed: () {
                      if (questionManager
                          .questions[currentIndex].selectedAnswer.isNotEmpty) {
                        if (currentIndex ==
                            questionManager.questions.length - 1) {

                        } else {
                          setState(() {
                            currentIndex++;
                          });
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Please select an answer'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
