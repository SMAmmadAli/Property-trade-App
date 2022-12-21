import 'package:flutter/material.dart';

import '../../utils/color_constant.dart';
import '../../utils/text_constant.dart';

class MyTextImage extends StatelessWidget {
  final String thisImage1;
  const MyTextImage({super.key, required this.thisImage1});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          thisImage1,
          width: MediaQuery.of(context).size.width * 0.18,
          height: MediaQuery.of(context).size.height * 0.09,
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
          right: 7,
          bottom: 10,
          child: Text(
            TextConstant.imagetext,
            style: TextStyle(
                color: ColorConstant.ligthWhite,
                fontWeight: FontWeight.w700,
                fontSize: 18),
          ))
    ]);
    ;
  }
}
