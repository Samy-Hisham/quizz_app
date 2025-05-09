class QuestionModel {
  String question;
  List<String> answers;
  int answerIndex = 0;

  QuestionModel({
    required this.question,
    required this.answers,
    // required this.answerIndex,
  });
}