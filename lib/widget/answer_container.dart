import 'package:flutter/material.dart';
import 'package:quizz_app/styles/app_colors.dart';
import 'package:quizz_app/styles/app_text_style.dart';
import 'package:quizz_app/widget/circle_container.dart';
import 'package:quizz_app/widget/text_question.dart';

class AnswerContainer extends StatelessWidget {
  const AnswerContainer({super.key, required this.isSelected, required this.text});

  final bool isSelected;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        CircleContainer(isSelected: isSelected),

        const SizedBox(width: 16),

        TextQuestion(
          text: text,
          style: AppTextStyle.medium18(
            color: AppColors.darkSecondaryColor,
          ),
        ),
      ],
    );
  }
}
