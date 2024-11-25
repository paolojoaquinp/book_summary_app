import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 32,
            backgroundImage: NetworkImage(
              'https://picsum.photos/200/300?random=1',
            ),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
