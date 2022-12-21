import 'package:flutter/material.dart';
import 'package:property_trade_app/utils/text_constant.dart';

import '../../utils/color_constant.dart';

class MyBottomText extends StatelessWidget {
  const MyBottomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          TextConstant.price,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
              color: ColorConstant.darkBlue),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorConstant.darkBlue,
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
            child: Text(
              TextConstant.Buy,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: ColorConstant.bgColor),
            ),
          ),
        )
      ],
    );
  }
}
