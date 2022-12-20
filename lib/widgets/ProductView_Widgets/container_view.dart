import 'package:flutter/material.dart';
import 'package:property_trade_app/utils/text_constant.dart';

import '../../utils/color_constant.dart';

class ContainerView extends StatelessWidget {
  ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 90,
        height: 42,
        decoration: BoxDecoration(color: ColorConstant.darkBlue),
        child: Text(
          TextConstant.House,
          style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 16,
              color: ColorConstant.darkBlue),
        ),
      ),
    );
  }
}
