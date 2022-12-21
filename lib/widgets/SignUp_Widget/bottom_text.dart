import 'package:flutter/material.dart';
import 'package:property_trade_app/utils/color_constant.dart';
import 'package:property_trade_app/utils/text_constant.dart';

class SignInButtonText extends StatelessWidget {
  final String bText1;
  final String bText2;
  const SignInButtonText(
      {super.key, required this.bText1, required this.bText2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          bText1,
          style: TextStyle(
            color: ColorConstant.grey,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          width: 3,
        ),
        Text(bText2,
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: ColorConstant.blue))
      ],
    );
  }
}
