import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:project_2/features/quizz/data/questions_data.dart';
import 'package:project_2/features/quizz/models/question_model.dart';

part 'quizz_event.dart';
part 'quizz_state.dart';

class QuizzBloc extends Bloc<QuizzEvent, QuizzState> {
  int questionIndex = 0;
  int score = 0;
  List<int?> selectedAnswer = List.filled(questions.length, null);
  QuizzBloc() : super(QuizzInitialState()) {
    on<InitialQuizzEvent>((event, emit) {
      questionIndex = 0;
      score = 0;
      selectedAnswer = List.filled(questions.length, null);
      emit(QuizzLoadingState());
      emit(
        QuizzLoadedState(
          questionIndex: questionIndex,
          question: questions[questionIndex],
        ),
      );
    });
    on<SelectedAnswerEvent>((event, emit) {
      selectedAnswer[questionIndex] = event.answerIndex;
      emit(
        QuizzLoadedState(
          questionIndex: questionIndex,
          question: questions[questionIndex],
          answerSelectedIndex: event.answerIndex,
        ),
      );
    });
    on<SelectedNextEvent>((event, emit) {
      if (state is QuizzLoadedState) {
        final loadState = state as QuizzLoadedState;
        if (loadState.answerSelectedIndex != null) {
          if (questionIndex < questions.length - 1) {
            questionIndex++;
            emit(QuizzLoadingState());
            emit(
              QuizzLoadedState(
                questionIndex: questionIndex,
                question: questions[questionIndex],
              ),
            );
          }
        }
      }
    });
    on<SelectedSubmitEvent>((event, emit) {
      score = 0;
      for (int i = 0; i < questions.length; i++) {
        final selectAnswer = selectedAnswer[i];
        if (selectAnswer != null) {
          final correctAnswer = questions[i].answers.indexWhere((element) {
            return element.isCorrect;
          });
          if (selectAnswer == correctAnswer) {
            score++;
          }
        }
      }
      emit(QuizzFinishedState(score: score));
    });
  }
}
