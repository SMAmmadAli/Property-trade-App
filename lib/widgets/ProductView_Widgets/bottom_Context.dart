import 'package:flutter/material.dart';
import '../../utils/color_constant.dart';

class BottomContext extends StatelessWidget {
  final String myIcons;
  final String myText;
  const BottomContext({super.key, required this.myIcons, required this.myText});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.bed_outlined,
      size: 15,
      color: ColorConstant.yellow,
    );
    Text(
      myText,
      style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: ColorConstant.bgColor),
    );
  }
}
