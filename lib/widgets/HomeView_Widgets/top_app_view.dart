import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/color_constant.dart';
import '../../utils/text_constant.dart';

class TopApp extends StatelessWidget {
  const TopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          TextConstant.Detail,
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: ColorConstant.darkBlue),
        ),
        Container(
            width: MediaQuery.of(context).size.width * 0.15,
            height: MediaQuery.of(context).size.height * 0.07,
            decoration: BoxDecoration(
                color: ColorConstant.lightBlue,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 0.5, color: ColorConstant.darkBlue)),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                CupertinoIcons.left_chevron,
                size: 18,
                color: ColorConstant.darkBlue,
              ),
            ))
      ],
    );
  }
}
