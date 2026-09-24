import 'package:project_2/features/quizz/models/question_model.dart';

List<QuestionModel> questions = [
  QuestionModel(
    text: 'Who is The owner  of Flutter?',
    answers: [
      AnswerModel(text: 'FaceBook', isCorrect: false),
      AnswerModel(text: 'Google', isCorrect: true),
      AnswerModel(text: 'Apple', isCorrect: false),
      AnswerModel(text: 'Microsoft', isCorrect: false),
    ],
  ),
  QuestionModel(
    text: 'Flutter uses Dart programming language.',
    answers: [
      AnswerModel(text: 'True', isCorrect: true),
      AnswerModel(text: 'False', isCorrect: false),
    ],
  ),

  QuestionModel(
    text: 'Which of these is a state management library in Flutter?',
    answers: [
      AnswerModel(text: 'Provider', isCorrect: true),
      AnswerModel(text: 'Redux', isCorrect: false),
      AnswerModel(text: 'Both', isCorrect: false),
    ],
  ),

  QuestionModel(
    text: 'Which of the following are mobile operating systems?',
    answers: [
      AnswerModel(text: 'Android', isCorrect: false),
      AnswerModel(text: 'iOS', isCorrect: false),
      AnswerModel(text: 'KaiOS', isCorrect: false),
      AnswerModel(text: 'All of the above', isCorrect: true),
    ],
  ),

  QuestionModel(
    text: 'What does IDE stand for?',
    answers: [
      AnswerModel(text: 'Integrated Development Environment', isCorrect: true),
      AnswerModel(text: 'Internal Data Engine', isCorrect: false),
      AnswerModel(text: 'Interactive Design Element', isCorrect: false),
      AnswerModel(text: 'Integrated Debugging Engine', isCorrect: false),
    ],
  ),

  QuestionModel(
    text: 'Which widget is used to display a scrollable list in Flutter?',
    answers: [
      AnswerModel(text: 'ListView', isCorrect: true),
      AnswerModel(text: 'Column', isCorrect: false),
      AnswerModel(text: 'Container', isCorrect: false),
    ],
  ),

  QuestionModel(
    text: 'Is Flutter an open-source framework?',
    answers: [
      AnswerModel(text: 'Yes', isCorrect: true),
      AnswerModel(text: 'No', isCorrect: false),
    ],
  ),

  QuestionModel(
    text: 'Which of these are Dart data types?',
    answers: [
      AnswerModel(text: 'int', isCorrect: false),
      AnswerModel(text: 'String', isCorrect: false),
      AnswerModel(text: 'bool', isCorrect: false),
      AnswerModel(text: 'double', isCorrect: false),
      AnswerModel(text: 'All of the above', isCorrect: true),
    ],
  ),
  QuestionModel(
    text: 'What is the purpose of the pubspec.yaml file?',
    answers: [
      AnswerModel(text: 'Manage dependencies', isCorrect: true),
      AnswerModel(text: 'Define UI', isCorrect: false),
      AnswerModel(text: 'Store user data', isCorrect: false),
      AnswerModel(text: 'Compile code', isCorrect: false),
    ],
  ),

  QuestionModel(
    text: 'Which company developed Swift?',
    answers: [
      AnswerModel(text: 'Apple', isCorrect: true),
      AnswerModel(text: 'Google', isCorrect: false),
      AnswerModel(text: 'Microsoft', isCorrect: false),
    ],
  ),
];
