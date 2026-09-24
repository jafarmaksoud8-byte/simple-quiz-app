import 'package:flutter/material.dart';
import 'package:project_2/core/constant/app_color.dart';

class QuestionCardWidget extends StatelessWidget {
  final String text;
  const QuestionCardWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          alignment: Alignment.center,
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            color: AppColor.cardBackgroundColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: AppColor.cardTextColor,
            ),
          ),
        ),
        Positioned(
          left: -40,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: AppColor.backGroundColor,
          ),
        ),
        Positioned(
          right: -40,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: AppColor.backGroundColor,
          ),
        ),
        Positioned(
          top: -40,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: AppColor.cardBackgroundColor,
            child: Icon(Icons.check, size: 50, color: AppColor.successColor),
          ),
        ),
      ],
    );
  }
}
