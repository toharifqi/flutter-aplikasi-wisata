import 'package:flutter/material.dart';

class DetailIcon extends StatelessWidget {
  final IconData icon;
  final String text;

  const DetailIcon({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        const SizedBox(height: 8.0),
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
