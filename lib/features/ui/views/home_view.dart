import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_2/bloc/quizz_bloc.dart';
import 'package:project_2/core/constant/app_color.dart';
import 'package:project_2/features/quizz/data/questions_data.dart';
import 'package:project_2/features/ui/widgets/elevated_button_widget.dart';
import 'package:project_2/features/ui/widgets/question_card_widget.dart';
import 'package:project_2/features/ui/widgets/result_dialog.dart';
import 'package:project_2/features/ui/widgets/text_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    context.read<QuizzBloc>().add(InitialQuizzEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<QuizzBloc, QuizzState>(
      listener: (context, state) {
        if (state is QuizzFinishedState) {
          showDialog(
            context: context,
            builder: (context) {
              return ResultDialogWidget(
                score: state.score,
                onRestart: () {
                  Navigator.pop(context);
                  context.read<QuizzBloc>().add(InitialQuizzEvent());
                },
              );
            },
          );
        }
      },
      child: Scaffold(
        backgroundColor: AppColor.backGroundColor,
        appBar: AppBar(
          backgroundColor: AppColor.backGroundColor,
          centerTitle: true,
          title: TextWidget(text: 'Simple Quizz App'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: BlocBuilder<QuizzBloc, QuizzState>(
                  builder: (context, state) {
                    if (state is QuizzLoadedState) {
                      return TextWidget(
                        text: 'Question ${state.questionIndex + 1}/10',
                      );
                    }
                    return SizedBox.shrink();
                  },
                ),
              ),
              SizedBox(height: 50),
              BlocBuilder<QuizzBloc, QuizzState>(
                builder: (context, state) {
                  if (state is QuizzLoadedState) {
                    return QuestionCardWidget(text: state.question.text);
                  } else {
                    return SizedBox.shrink();
                  }
                },
              ),
              SizedBox(height: 30),
              BlocBuilder<QuizzBloc, QuizzState>(
                builder: (context, state) {
                  if (state is QuizzLoadedState) {
                    return Column(
                      children: state.question.answers.indexed.map((e) {
                        final index = e.$1;
                        final answer = e.$2;
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: ElevatedButtonWidget(
                            text: answer.text,
                            width: 200,
                            height: 60,
                            onPressed: () {
                              context.read<QuizzBloc>().add(
                                SelectedAnswerEvent(answerIndex: index),
                              );
                            },
                            isSelected: index == state.answerSelectedIndex,
                          ),
                        );
                      }).toList(),
                    );
                  } else {
                    return SizedBox.shrink();
                  }
                },
              ),
              SizedBox(height: 30),
              BlocBuilder<QuizzBloc, QuizzState>(
                builder: (context, state) {
                  if (state is QuizzLoadedState) {
                    if (state.questionIndex < questions.length - 1) {
                      return ElevatedButtonWidget(
                        text: 'Next',
                        width: double.infinity,
                        height: 60,
                        onPressed: () {
                          context.read<QuizzBloc>().add(SelectedNextEvent());
                        },
                      );
                    } else {
                      return ElevatedButtonWidget(
                        text: 'Submit',
                        width: double.infinity,
                        height: 60,
                        onPressed: () {
                          context.read<QuizzBloc>().add(SelectedSubmitEvent());
                        },
                      );
                    }
                  } else {
                    return SizedBox.shrink();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
