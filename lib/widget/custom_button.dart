import 'package:flutter/material.dart';
import 'package:quizz_app/styles/app_colors.dart';
import 'package:quizz_app/styles/app_text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.width,
      required this.text,
      required this.onPressed});

  final double width;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 13),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: AppTextStyle.medium18(
                  color: AppColors.darkSecondaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
