import 'package:flutter/material.dart';
import 'package:property_trade_app/utils/color_constant.dart';
import 'package:property_trade_app/utils/text_constant.dart';

class MultipleImage extends StatelessWidget {
  final String thisImage;
  const MultipleImage({super.key, required this.thisImage});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        thisImage,
        width: MediaQuery.of(context).size.width * 0.18,
        height: MediaQuery.of(context).size.height * 0.09,
        fit: BoxFit.cover,
      ),
    );
  }
}
