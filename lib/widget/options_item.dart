import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizz_app/styles/app_colors.dart';
import 'package:quizz_app/styles/app_text_style.dart';

import '../styles/app_images.dart';

class InActiveOptionItem extends StatelessWidget {
  const InActiveOptionItem({super.key, required this.option});

  final String option;
  @override
  Widget build(BuildContext context) {
    // refactor decoration
    // color
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: ShapeDecoration(
          color: Colors.white /* MAINE-WHITE */,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 16,
          children: [
            Container(
              width: 19,
              height: 19,
              padding: const EdgeInsets.all(5),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: const Color(0xFF2B0062) /* MAINE-VIOLET */,
                  ),
                  borderRadius: BorderRadius.circular(9.50),
                ),
              ),
            ),

            Text(
              option,
              style: AppTextStyle.regular16(color: AppColors.darkSecondaryColor)
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class ActiveOptionItem extends StatelessWidget {
  const ActiveOptionItem({super.key, required this.option});

  final String option;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, 1.00),
          end: Alignment(1.00, 0.17),
          colors: [const Color(0xFFB8B2FF), const Color(0xFFC6C2F7)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: [
          Container(
            width: 19,
            padding: const EdgeInsets.all(5),
            decoration: ShapeDecoration(
              color: const Color(0xFF2B0062) /* MAINE-VIOLET */,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9.50),
              ),
            ),
            child:  SvgPicture.asset(AppImages.checkIcon),
          ),

          Text(
              option,
              style: AppTextStyle.regular16(color: AppColors.darkSecondaryColor)
          ),
          Spacer(),
        ],
      ),
    );
  }
}

