//question : text(string) + list of answer(list)
//answer : text(string) + iscorrect(bool)

class QuestionModel {
  final String text;
  final List<AnswerModel> answers;

  QuestionModel({required this.text, required this.answers});
}

class AnswerModel {
  final String text;
  final bool isCorrect;

  AnswerModel({required this.text, required this.isCorrect});
}


