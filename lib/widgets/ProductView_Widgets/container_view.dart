import 'package:flutter/material.dart';

import '../../utils/color_constant.dart';

class ContainerView extends StatelessWidget {
  ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 90,
        height: 42,
        decoration: BoxDecoration(color: ColorConstant.Color2),
        child: Text(
          "House",
          style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 16,
              color: ColorConstant.Color1),
        ),
      ),
    );
  }
}
