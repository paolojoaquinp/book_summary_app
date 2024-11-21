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
      child: Wrap(
        spacing: 8.0,
        runSpacing: 12.0,
        children: [
          _buildChip('Self Acceptance', backgroundColor: const Color(0xFFCCFF00)),
          _buildChip('Fears', backgroundColor: const Color(0xFF2C2C2E)),
          _buildChip('Memory', backgroundColor: const Color(0xFF2C2C2E)),
          _buildChip('Personal boundaries', backgroundColor: const Color(0xFF2C2C2E)),
          _buildChip('Parents', backgroundColor: const Color(0xFF2C2C2E)),
          _buildChip('Doubts', backgroundColor: const Color(0xFF8E8FFF)),
          _buildChip('Controlling emotions', backgroundColor: const Color(0xFFFFB800)),
          _buildChip('Parenting', backgroundColor: const Color(0xFF2C2C2E)),
        ],
      ),
    );
  }

  Widget _buildChip(String label, {required Color backgroundColor}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: backgroundColor.computeLuminance() > 0.5 ? Colors.black : Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}