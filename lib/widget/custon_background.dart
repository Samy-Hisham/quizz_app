import 'package:flutter/material.dart';
import 'package:quizz_app/styles/app_images.dart';

class CustonBackground extends StatelessWidget {
  const CustonBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppImages.gradinet,
        ),
        child,
      ],
    );
  }
}
