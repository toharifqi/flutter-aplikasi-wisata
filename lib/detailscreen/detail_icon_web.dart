import 'package:flutter/material.dart';

class DetailIconWeb extends StatelessWidget {
  final IconData icon;
  final String text;

  const DetailIconWeb({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 8.0),
        Text(
          text,
          style: const TextStyle(
            fontFamily: "Oxygen",
          ),
        )
      ],
    );
  }
}
