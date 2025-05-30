import 'package:flutter/material.dart';
import 'package:quizz_app/styles/app_colors.dart';
import 'package:quizz_app/styles/app_text_style.dart';
import 'package:quizz_app/widget/answer_container.dart';
import 'package:quizz_app/widget/text_question.dart';

class QuestionsContainer extends StatefulWidget {
  final String questionText;
  final List<String> answersButtonLabels;

  const QuestionsContainer({
    super.key,
    required this.questionText,
    required this.answersButtonLabels,
  });

  @override
  _QuestionsContainerState createState() => _QuestionsContainerState();
}

class _QuestionsContainerState extends State<QuestionsContainer> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextQuestion(
            text: widget.questionText,
            style: AppTextStyle.medium24(color: Colors.white)),
        const SizedBox(height: 16),
        Column(
          children: List.generate(widget.answersButtonLabels.length, (index) {
            final isSelected = selectedIndex == index;

            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                  // Update selected button
                });
              },
              child: Container(
                width: 300,
                margin: const EdgeInsets.symmetric(vertical: 8),
                padding: const EdgeInsets.all(15),
                decoration: ShapeDecoration(
                  color:
                      isSelected ? AppColors.lightSecondaryColor : Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: AnswerContainer(
                    isSelected: isSelected
                    , text: widget.answersButtonLabels[index]),
              ),
            );
          }),
        ),
      ],
    );
  }
}
