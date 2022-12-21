import 'package:flutter/material.dart';
import 'package:property_trade_app/utils/color_constant.dart';
import 'package:property_trade_app/utils/text_constant.dart';

class MyLine extends StatelessWidget {
  final String Lor;
  const MyLine({super.key, required this.Lor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: ColorConstant.grey,
              thickness: 0.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Text(
              Lor,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: ColorConstant.grey),
            ),
          ),
          Expanded(
            child: Divider(
              color: ColorConstant.grey,
              thickness: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
