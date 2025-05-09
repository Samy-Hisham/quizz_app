import 'package:flutter/material.dart';
import 'package:quizz_app/styles/app_colors.dart';
import 'package:quizz_app/widget/custom_button_questions.dart';

class RowButtonContainer extends StatelessWidget {
  const RowButtonContainer({super.key, required this.onPressedBack , required this.onPressedNext});

  final VoidCallback onPressedBack;
  final VoidCallback onPressedNext;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButtonQuestions(
          text: 'Back',
          icon: Icons.arrow_back_ios_rounded,
          color: Colors.transparent,
          onPressed: onPressedBack,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          borderColor: AppColors.secondaryColor,
          isIconFirst: true,
        ),
        CustomButtonQuestions(
          text: 'Next',
          icon: Icons.navigate_next,
          color: AppColors.secondaryColor,
          onPressed: onPressedNext,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          isIconFirst: false,
        ),
      ],
    );
  }
}
