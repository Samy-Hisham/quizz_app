// import 'dart:math';
//
// import 'package:flutter/material.dart';
// import 'package:quizz_app/model/question_model.dart';
// import 'package:quizz_app/styles/app_text_style.dart';
// import 'package:quizz_app/views/next_Screen.dart';
// import 'package:quizz_app/widget/circle_container.dart';
// import 'package:quizz_app/widget/questions_action_button.dart';
// import 'package:quizz_app/widget/question_header.dart';
// import '../styles/app_colors.dart';
// import '../styles/app_images.dart';
// import '../widget/questions_container.dart';
//
// class QuestionView extends StatefulWidget {
//   QuestionView({super.key});
//
//   @override
//   State<QuestionView> createState() => _QuestionViewState();
// }
//
// class _QuestionViewState extends State<QuestionView> {
//   int questionNumber = 1;
//
//   List<QuestionModel> questions = [
//     QuestionModel(
//       question:
//           'How would you describe your level of satisfaction with healthcare systems?',
//       options: [
//         'Strongly Satisfied',
//         'Satisfied',
//         'Neutral',
//         'Not Satisfied',
//       ],
//     ),
//     QuestionModel(
//       question: 'What vitamins do you take?',
//       options: [
//         'Vitamin D3',
//         'Vitamin B',
//         'Zinc',
//         'Magnesium',
//       ],
//     ),
//     QuestionModel(
//       question: 'How old are you?',
//       options: [
//         'under 18',
//         '18 : 30',
//         '31 : 50',
//         '50+',
//       ],
//     ),
//     QuestionModel(
//       question: 'Are you suffering from a cold?',
//       options: [
//         'Sneezing',
//         'cough',
//         'fatigue',
//         'low-grade fever',
//       ],
//     ),
//   ];
//
//   final questionData = {
//     1: {'text': 'Question 1', 'image': AppImages.q1},
//     2: {'text': 'Question 2', 'image': AppImages.q2},
//     3: {'text': 'Question 3', 'image': AppImages.q3},
//     4: {'text': 'Question 4', 'image': AppImages.q4},
//   };
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: AppColors.primaryColor,
//         body: SafeArea(
//             child: Stack(children: [
//           Image.asset(
//             AppImages.gradinet,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 40.0, left: 10, right: 10),
//             child: Column(children: [
//               Padding(
//                   padding: const EdgeInsets.only(right: 190.0),
//                   child: QuestionNumberContainer(
//                     text: questionData[questionNumber]?['text'] ??
//                         'Unknown Question',
//                     Image:
//                         questionData[questionNumber]?['image'] ?? AppImages.q1,
//                   )),
//               const SizedBox(
//                 height: 20,
//               ),
//               //
//               // QuestionsContainer(
//               //   questionText: questions[questionNumber - 1].question,
//               //   answersButtonLabels: questions[questionNumber - 1].options,
//               // ),
//               // ListView.builder(itemCount: questions.length
//               //     ,itemBuilder: (context, index) {
//               //   return ListTile(
//               //     leading: CircleContainer(isSelected: isSelected),
//               //   );
//               // }),
//
//               Expanded(child: SizedBox()),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                    TextButton(
//                       onPressed: questionNumber > 1
//                           ? () {
//                               setState(() {
//                                 questionNumber--;
//                               });
//                             }
//                           : null,
//                       style: TextButton.styleFrom(
//                         backgroundColor: Colors.transparent,
//                         side: BorderSide(color: AppColors.secondaryColor),
//                         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Icon(Icons.arrow_back_ios_rounded, color: Colors.white),
//                           const SizedBox(width: 8),
//                           Text(
//                             'Back',
//                             style: AppTextStyle.medium18(color: Colors.white),
//                           ),
//                         ],
//                       ),
//                     ),
//                     TextButton(
//                       onPressed: questionNumber < 4
//                           ? () {
//                               setState(() {
//                                 questionNumber++;
//                               });
//                             }
//                           : null,
//                       style: TextButton.styleFrom(
//                         backgroundColor: AppColors.secondaryColor,
//                         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             'Next',
//                             style: AppTextStyle.medium18(color: Colors.white),
//                           ),
//                           const SizedBox(width: 8),
//                           Icon(Icons.navigate_next, color: Colors.white),
//                         ],
//                       ),
//                     )
//
//                   ],
//                 ),
//               ),
//             ]),
//           )
//         ])));
//   }
// }
