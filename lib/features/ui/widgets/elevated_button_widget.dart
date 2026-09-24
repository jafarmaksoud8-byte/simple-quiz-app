import 'package:flutter/material.dart';
import 'package:project_2/core/constant/app_color.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final VoidCallback onPressed;
  final bool isSelected;
  const ElevatedButtonWidget({
    super.key,
    required this.text,
    required this.width,
    required this.height,
    required this.onPressed,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected
            ? AppColor.selectedOptionColor
            : AppColor.optionButtonColor,
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: AppColor.cardTextColor,
        ),
      ),
    );
  }
}
