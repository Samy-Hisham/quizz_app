import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quizz_app/model/question_model.dart';
import 'package:quizz_app/styles/app_text_style.dart';
import 'package:quizz_app/views/next_Screen.dart';
import 'package:quizz_app/widget/custom_button_questions.dart';
import 'package:quizz_app/widget/question_number_container.dart';
import '../styles/app_colors.dart';
import '../styles/app_images.dart';
import '../widget/questions_container.dart';

class QuestionView extends StatefulWidget {
  QuestionView({super.key});

  @override
  State<QuestionView> createState() => _QuestionViewState();
}

class _QuestionViewState extends State<QuestionView> {
  int questionNumber = 1;

  List<QuestionModel> questions = [
    QuestionModel(
      question:
          'How would you describe your level of satisfaction with healthcare systems?',
      answers: [
        'Strongly Satisfied',
        'Satisfied',
        'Neutral',
        'Not Satisfied',
      ],
    ),
    QuestionModel(
      question: 'What vitamins do you take?',
      answers: [
        'Vitamin D3',
        'Vitamin B',
        'Zinc',
        'Magnesium',
      ],
    ),
    QuestionModel(
      question: 'How old are you?',
      answers: [
        'under 18',
        '18 : 30',
        '31 : 50',
        '50+',
      ],
    ),
    QuestionModel(
      question: 'Are you suffering from a cold?',
      answers: [
        'Sneezing',
        'cough',
        'fatigue',
        'low-grade fever',
      ],
    ),
  ];

  final questionData = {
    1: {'text': 'Question 1', 'image': AppImages.q1},
    2: {'text': 'Question 2', 'image': AppImages.q2},
    3: {'text': 'Question 3', 'image': AppImages.q3},
    4: {'text': 'Question 4', 'image': AppImages.q4},
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: SafeArea(
            child: Stack(children: [
          Image.asset(
            AppImages.gradinet,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 10, right: 10),
            child: Column(children: [
              Padding(
                  padding: const EdgeInsets.only(right: 190.0),
                  child: QuestionNumberContainer(
                    text: questionData[questionNumber]?['text'] ??
                        'Unknown Question',
                    Image:
                        questionData[questionNumber]?['image'] ?? AppImages.q1,
                  )),
              const SizedBox(
                height: 20,
              ),
              QuestionsContainer(
                  questionText: questions[questionNumber - 1].question,
                  buttonLabels: questions[questionNumber - 1].answers),
              Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButtonQuestions(
                      text: 'Back',
                      icon: Icons.arrow_back_ios_rounded,
                      color: Colors.transparent,
                      onPressed: questionNumber > 1
                          ? () {
                              setState(() {
                                questionNumber--;
                              });
                            }
                          : null,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      borderColor: AppColors.secondaryColor,
                      isIconFirst: true,
                    ),
                    CustomButtonQuestions(
                      text: 'Next',
                      icon: Icons.navigate_next,
                      color: AppColors.secondaryColor,
                      onPressed: questionNumber < 4
                          ? () {
                              setState(() {
                                questionNumber++;
                              });
                            }
                          : null,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      isIconFirst: false,
                    ),
                  ],
                ),
              ),
            ]),
          )
        ])));
  }
}
