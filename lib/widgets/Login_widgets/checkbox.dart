import 'package:flutter/material.dart';
import 'package:property_trade_app/utils/color_constant.dart';

class Mycheckbox extends StatelessWidget {
  const Mycheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: ColorConstant.blue,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Icon(
            Icons.check,
            size: 15,
            color: ColorConstant.bgColor,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          'Remember me',
          style: Theme.of(context).textTheme.subtitle1,
        )
      ],
    );
  }
}
