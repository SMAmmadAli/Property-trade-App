import 'package:flutter/material.dart';

import '../../utils/color_constant.dart';
import '../../utils/text_constant.dart';

class CustomText extends StatelessWidget {
  final String text1;
  const CustomText({super.key, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35.0),
      child: Text(
        text1,
        style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 24,
            color: ColorConstant.Color2),
      ),
    );
  }
}
