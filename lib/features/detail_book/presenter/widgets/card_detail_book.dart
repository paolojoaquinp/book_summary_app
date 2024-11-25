import 'package:flutter/material.dart';

class CardDetailBook extends StatelessWidget {
  const CardDetailBook({
    super.key,
    required this.label,
    this.isIcon = false,
    required this.detailLabel,
  });

  final String label;
  final bool isIcon;
  final String detailLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color(0xff161E26),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
      width: double.maxFinite,
      child: Row(
        children: [
          if (isIcon)
            const Icon(
              Icons.star,
              color: Color(0xff8482FD),
            ),
          if (isIcon)
            const SizedBox(
              width: 6.0,
            ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 14,
                ),
              ),
              Text(
                detailLabel,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
