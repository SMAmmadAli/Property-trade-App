import 'package:flutter/material.dart';
import 'package:property_trade_app/utils/text_constant.dart';

import '../../utils/color_constant.dart';

class BoxIconn extends StatelessWidget {
  const BoxIconn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.bed_outlined,
          size: 10,
          color: ColorConstant.yellow,
        ),
        const SizedBox(width: 2),
        Text(
          TextConstant.Bed,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 9,
              color: ColorConstant.black),
        ),
        const SizedBox(width: 4),
        Icon(
          Icons.bathroom_outlined,
          size: 10,
          color: ColorConstant.yellow,
        ),
        const SizedBox(width: 2),
        Text(
          TextConstant.Baths,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 9,
              color: ColorConstant.black),
        ),
        const SizedBox(width: 4),
        Icon(
          Icons.car_crash,
          size: 10,
          color: ColorConstant.yellow,
        ),
        const SizedBox(width: 2),
        Text(
          TextConstant.Garage,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 9,
              color: ColorConstant.black),
        ),
      ],
    );
  }
}
