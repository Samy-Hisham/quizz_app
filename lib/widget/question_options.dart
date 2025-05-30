import 'package:flutter/material.dart';
import 'package:quizz_app/model/question-manager.dart';
import 'package:quizz_app/model/question_model.dart';
import 'package:quizz_app/widget/options_item.dart';

class QuestionOptions extends StatefulWidget {
  const QuestionOptions(
      {super.key, required this.options, required this.questionManager, required this.questions});

  final List<String> options;
  final QuestionModel questions;
  final QuestionManager questionManager;

  @override
  State<QuestionOptions> createState() => _QuestionOptionsState();
}

class _QuestionOptionsState extends State<QuestionOptions> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.options.length,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: OptionItem(
                  option: widget.options[index],
                  isSelected: selectedIndex == index,
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                    widget.questionManager.updateQuestion(
                        widget.questions,
                        widget.options[index]);
                  }));
        });
  }
}

class OptionItem extends StatelessWidget {
  const OptionItem(
      {super.key,
      required this.option,
      required this.isSelected,
      required this.onTap});

  final String option;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedCrossFade(
        firstChild: InActiveOptionItem(option: option),
        secondChild: ActiveOptionItem(option: option),
        crossFadeState:
            isSelected ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: Duration(microseconds: 300),
      ),
    );
  }
}

/*
selectedIndex == index
? ActiveOptionItem(option: widget.options[index])
    : InActiveOptionItem(option: widget.options[index],onTap: (){
setState(() {
selectedIndex = index;
});
 */

/*
InActiveOptionItem(
                  option: widget.options[index],
                  // isSelected: selectedIndex == index,
                  onTap: (){
                setState(() {
                  selectedIndex = index;
                });
*/

/*
ListView.builder(
        shrinkWrap: true,
        itemCount: widget.options.length,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: OptionItem(
                  option: widget.options[index],
                  isSelected: selectedIndex == index,
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                    //   widget.questionManager.updateQuestion(
                    //       questions[index], widget.options[index]);
                    // }));
                  }));
        });
 */
