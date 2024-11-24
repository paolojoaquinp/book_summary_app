import 'dart:math';

import 'package:book_summary_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ChipButton extends StatelessWidget {
  const ChipButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.isAdded,
  });

  final bool isAdded;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final selectedColors = [
      AppColors.greenLime,
      AppColors.violetTropitalIndigo,
      AppColors.yellowSelective,
    ];
    final colorBackground = !isAdded
        ? AppColors.gunMetal
        : selectedColors.isNotEmpty
            ? selectedColors[Random().nextInt(3)]
            : AppColors.gunMetal;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        decoration: BoxDecoration(
          color: colorBackground,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isAdded
                ? Colors.black
                : Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
