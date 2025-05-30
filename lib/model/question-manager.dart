import 'package:quizz_app/model/question_model.dart';

class QuestionManager {

  final List<QuestionModel> questions;
  QuestionManager(this.questions);
// ?? when object in fun not same object in list
  updateQuestion(QuestionModel question, String selectedAnswer) {
    question.selectedAnswer = selectedAnswer;
    var itemIndex = questions.indexOf(question);
    questions.remove(question);
    questions.insert(itemIndex,question);
  }
}