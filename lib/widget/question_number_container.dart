import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizz_app/styles/app_colors.dart';

class QuestionNumberContainer extends StatelessWidget {
  const QuestionNumberContainer({super.key, required this.text, required this.Image});

  final String text;
  final String Image;
  // final int questionNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: ShapeDecoration(
          color: AppColors.secondaryColor ,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: AppColors.secondaryColor ,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 8,
          children: [
            SvgPicture.asset(Image),
            Text(
              text,
            ),
          ],
        ));
  }
}
