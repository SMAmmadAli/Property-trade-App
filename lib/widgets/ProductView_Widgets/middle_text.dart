import 'package:flutter/material.dart';

import '../../utils/color_constant.dart';

class MiddleText extends StatelessWidget {
  final String mText;
  const MiddleText({super.key, required this.mText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35.0),
      child: Text(
        mText,
        style: Theme.of(context)
            .textTheme
            .subtitle1!
            .copyWith(color: ColorConstant.darkBlue),
      ),
    );
  }
}
