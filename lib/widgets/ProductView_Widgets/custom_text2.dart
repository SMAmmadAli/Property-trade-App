import 'package:flutter/material.dart';

import '../../utils/color_constant.dart';
import '../../utils/text_constant.dart';

class CustomText2 extends StatelessWidget {
  const CustomText2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35.0, top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TextConstant.TopText,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13,
              color: ColorConstant.Color2,
            ),
          ),
          Text(
            TextConstant.TopbottomText,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: ColorConstant.Color2,
            ),
          )
        ],
      ),
    );
  }
}
