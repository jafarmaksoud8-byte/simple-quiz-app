# Simple Quiz App 🧠

A simple and clean Quiz application built with **Flutter** and **BLoC** state management. 
The app presents a set of 10 questions, allows the user to select one answer per question, calculates the final score, and displays a result dialog (Pass/Fail) with the option to restart.

---

## 📸 Preview

![App Demo](assets/images/quiz_app_demo.gif)

---

## ✨ Features

- ✅ 10 multiple-choice questions (Single Choice).
- ✅ Clean and modern dark UI.
- ✅ Option buttons change color to orange when selected.
- ✅ "Next" button appears for questions 1–9.
- ✅ "Submit" button appears on the last question (10).
- ✅ Automatic score calculation.
- ✅ Result dialog:
  - **Passed** (Green) if score ≥ 5.
  - **Failed** (Red) if score < 5.
- ✅ **Restart** button to reset the quiz and start again.
- ✅ State management using **BLoC (Business Logic Component)**.
- ✅ Clean architecture folder structure.

---

## 🛠️ Technologies Used

- **Flutter** – UI Toolkit.
- **Dart** – Programming Language.
- **flutter_bloc** – State Management.
- **BLoC Pattern** – Separation of logic and UI.

---

## 📂 Project Structure

```text
lib/
├── bloc/
│   ├── quizz_bloc.dart
│   ├── quizz_event.dart
│   └── quizz_state.dart
│
├── core/
│   └── constant/
│       └── app_color.dart
│
├── features/
│   └── quizz/
│       ├── data/
│       │   └── questions_data.dart
│       ├── models/
│       │   └── question_model.dart
│       └── ui/
│           ├── views/
│           │   └── home_view.dart
│           └── widgets/
│               ├── elevated_button_widget.dart
│               ├── question_card_widget.dart
│               ├── result_dialog.dart
│               └── text_widget.dart
│
└── main.dart

🚀 Getting Started
Prerequisites
Flutter SDK (v3.0 or higher)
Dart SDK
Android Studio / VS Code

🧩 How It Works (BLoC Flow)
InitialQuizzEvent → Loads the first question.
SelectedAnswerEvent → Saves the selected answer.
SelectedNextEvent → Moves to the next question.
SelectedSubmitEvent → Calculates the score and shows the result.
The UI reacts to state changes via BlocBuilder and BlocListener.

