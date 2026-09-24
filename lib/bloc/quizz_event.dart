part of 'quizz_bloc.dart';

@immutable
sealed class QuizzEvent {}

class InitialQuizzEvent extends QuizzEvent {
  final int questionIndex;
  InitialQuizzEvent({this.questionIndex = 0});
}

class SelectedAnswerEvent extends QuizzEvent {
  final int answerIndex;
  SelectedAnswerEvent({required this.answerIndex});
}

class SelectedNextEvent extends QuizzEvent {}

class SelectedSubmitEvent extends QuizzEvent {}
