import 'package:flutter/material.dart';
import 'package:quizz_app/styles/app_colors.dart';
import 'package:quizz_app/styles/app_images.dart';
import 'package:quizz_app/styles/app_text_style.dart';
import 'package:quizz_app/views/question_view.dart';
import 'package:quizz_app/widget/custom_button.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: SafeArea(
          child: Stack(
            children: [
              Image.asset(
                AppImages.gradinet,
              ),
              Image.asset(
                AppImages.gradinet,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text('Good Morning',
                          style: AppTextStyle.medium18(color: Colors.white)),
                      SizedBox(
                        height: 8,
                      ),
                      Text('New topic is waiting',
                          style: AppTextStyle.medium24(color: Colors.white)),
                      Expanded(child: SizedBox()),
                      CustomButton(
                          width: 300, text: 'Start Quiz', onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => QuestionView()));
                      })
                    ]),
              ),
            ],
          ),
        ));
  }
}
