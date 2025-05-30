import 'package:equatable/equatable.dart';

class QuestionModel extends Equatable {
  final String question;
  final List<String> options;
  final String correctAnswer;
  String selectedAnswer;

  QuestionModel({
    required this.question,
    required this.options,
    required this.correctAnswer,
    this.selectedAnswer = '',
    // required this.answerIndex,
  });

  @override
  List<Object?> get props => [
        question,
        options,
        correctAnswer,
      ];


}

List<QuestionModel> questions = [
    QuestionModel(
      question:
          'How would you describe your level of satisfaction with healthcare systems?',
      options: [
        'Strongly Satisfied',
        'Satisfied',
        'Neutral',
        'Not Satisfied',
      ], correctAnswer: 'Strongly Satisfied',
    ),
    QuestionModel(
      question: 'What vitamins do you take?',
      options: [
        'Vitamin D3',
        'Vitamin B',
        'Zinc',
        'Magnesium',
      ], correctAnswer: 'Vitamin D3',
    ),
    QuestionModel(
      question: 'How old are you?',
      options: [
        'under 18',
        '18 : 30',
        '31 : 50',
        '50+',
      ], correctAnswer: 'under 18',
    ),
    QuestionModel(
      question: 'Are you suffering from a cold?',
      options: [
        'Sneezing',
        'cough',
        'fatigue',
        'low-grade fever',
      ], correctAnswer: 'Sneezing',
    ),
  ];