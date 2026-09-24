import 'package:flutter/material.dart';
import 'package:project_2/core/constant/app_color.dart';
import 'package:project_2/features/ui/widgets/elevated_button_widget.dart';

class ResultDialogWidget extends StatelessWidget {
  final int score;
  final VoidCallback onRestart;

  const ResultDialogWidget({
    super.key,
    required this.score,
    required this.onRestart,
  });

  @override
  Widget build(BuildContext context) {
    final isPassed = score >= 5;
    final resultText = isPassed ? 'Passed' : 'Failed';

    return AlertDialog(
      backgroundColor: AppColor.cardBackgroundColor,
      title: Text(
        '$resultText | Score is: $score',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: isPassed ? AppColor.successColor : AppColor.errorColor,
        ),
      ),
      actions: [
        ElevatedButtonWidget(
          text: 'Restart',
          width: 200,
          height: 60,
          onPressed: onRestart,
        ),
      ],
    );
  }
}
