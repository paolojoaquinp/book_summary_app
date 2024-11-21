import 'package:flutter/material.dart';

class ChipButton extends StatelessWidget {
  const ChipButton({
    super.key,
    this.backgroundColor = Colors.white,
    required this.label,
    required this.isActivated,
  });

  final Color backgroundColor;
  final String label;
  final bool isActivated;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: backgroundColor.computeLuminance() > 0.5
              ? Colors.black
              : Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
