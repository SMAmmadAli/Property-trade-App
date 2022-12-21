import 'package:flutter/material.dart';

class ImageAndText extends StatelessWidget {
  final String sentance;
  final Icon myIcon;
  const ImageAndText({super.key, required this.sentance, required this.myIcon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        myIcon,
        const SizedBox(width: 3),
        Text(
          sentance,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 8,
          ),
        ),
      ],
    );
  }
}
