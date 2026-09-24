part of 'quizz_bloc.dart';

@immutable
sealed class QuizzState {}

final class QuizzInitialState extends QuizzState {}

final class QuizzLoadingState extends QuizzState {}

final class QuizzLoadedState extends QuizzState {
  final int questionIndex;
  final QuestionModel question;
  final int? answerSelectedIndex;
  QuizzLoadedState({
    required this.questionIndex,
    required this.question,
    this.answerSelectedIndex,
  });
}

final class QuizzFinishedState extends QuizzState {
  final int score;
  QuizzFinishedState({required this.score});
}
