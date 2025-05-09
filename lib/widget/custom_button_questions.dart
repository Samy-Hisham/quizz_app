import 'package:flutter/material.dart';
import 'package:quizz_app/styles/app_text_style.dart';

class CustomButtonQuestions extends StatelessWidget {
  const CustomButtonQuestions(
      {super.key,
      required this.text,
      required this.icon,
      required this.color,
      required this.onPressed,
      required this.mainAxisAlignment,
      required this.crossAxisAlignment,
      this.borderColor = Colors.transparent,
      required this.isIconFirst});

  final String text;
  final IconData icon;
  final Color color;
  final Color borderColor;
  final VoidCallback? onPressed;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final bool isIconFirst;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: color,
        // SECONDARY-VIOLET
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: borderColor,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        children: isIconFirst
            ? [
                Icon(icon, color: Colors.white),
                const SizedBox(width: 11),
                Text(text, style: AppTextStyle.regular16(color: Colors.white)),
              ]
            : [
                Text(text, style: AppTextStyle.regular16(color: Colors.white)),
                const SizedBox(width: 11),
                Icon(icon, color: Colors.white),
              ],
      ),
    );
  }
}
