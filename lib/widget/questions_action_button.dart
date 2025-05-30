import 'package:flutter/material.dart';
import 'package:quizz_app/styles/app_colors.dart';
import 'package:quizz_app/styles/app_text_style.dart';

class QuestionsActionButtons extends StatelessWidget {
  const QuestionsActionButtons({
    super.key, required this.onBackPressed, required this.onNextPressed,
  });

  final VoidCallback onBackPressed;
  final VoidCallback onNextPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: onBackPressed,
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
            side: BorderSide(color: AppColors.secondaryColor),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.arrow_back_ios_rounded, color: Colors.white),
              const SizedBox(width: 8),
              Text(
                'Back',
                style: AppTextStyle.medium18(color: Colors.white),
              ),
            ],
          ),
        ),
        TextButton(
          onPressed: onNextPressed,
          style: TextButton.styleFrom(
            backgroundColor: AppColors.secondaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Next',
                style: AppTextStyle.medium18(color: Colors.white),
              ),
              const SizedBox(width: 8),
              Icon(Icons.navigate_next, color: Colors.white),
            ],
          ),
        )
      ],
    );
  }
}
