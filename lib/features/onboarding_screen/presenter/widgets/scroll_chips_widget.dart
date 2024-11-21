import 'package:book_summary_app/features/onboarding_screen/presenter/widgets/chip_button.dart';
import 'package:flutter/material.dart';

class ScrollChipsWidget extends StatelessWidget {
  const ScrollChipsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFF1C1C1E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Wrap(
        spacing: 8.0,
        runSpacing: 12.0,
        children: [

        ],
      ),
    );
  }
}