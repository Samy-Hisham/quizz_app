import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizz_app/model/question_model.dart';
import 'package:quizz_app/styles/app_colors.dart';

import '../styles/app_images.dart';

class QuestionHeader extends StatelessWidget {
  const QuestionHeader({super.key, required this.questionModel, required this.index});

  final int index;
  final QuestionModel questionModel;

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
            SvgPicture.asset(getImage),
            Text(
              'Question ${index + 1}',
            ),
          ],
        ));
  }

  String get getImage {
    switch (index) {
      case 0:
        return AppImages.q1;
      case 1:
        return AppImages.q2;
      case 2:
        return AppImages.q3;
      case 3:
        return AppImages.q4;
      default:
        return AppImages.q1;
    }
  }
}
