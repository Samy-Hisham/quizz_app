import 'package:flutter/material.dart';
import 'package:quizz_app/model/question-manager.dart';
import 'package:quizz_app/model/question_model.dart';
import 'package:quizz_app/styles/app_text_style.dart';
import 'package:quizz_app/widget/question_header.dart';
import 'package:quizz_app/widget/question_options.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem({super.key, required this.question, required this.index, required this.questionManager});

  final QuestionModel question;
  final int index;
  final QuestionManager questionManager ;

  @override
  Widget build(BuildContext context) {
    return Column(
      key: ValueKey(index),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionHeader(index:  index, questionModel: question,),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(end: 20),
          child: Text(
            question.question,
            style: AppTextStyle.medium24(),
          ),
        ),
        SizedBox(
          height: 32,
        ),
        QuestionOptions(
          options: question.options,
          questions: question,
          questionManager: questionManager,
        )
      ],
    );
  }
}
