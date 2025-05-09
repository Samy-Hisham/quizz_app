import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quizz_app/styles/app_colors.dart';
import 'package:quizz_app/styles/app_images.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer({super.key, required this.isSelected});

  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: ShapeDecoration(
        color: isSelected
            ? AppColors.darkSecondaryColor
            : Colors.transparent,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: AppColors.darkSecondaryColor,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: isSelected
          ? SvgPicture.asset(AppImages.checkIcon,
          width: 1, height: 1, color: Colors.white)
          : null,
    );
  }
}
