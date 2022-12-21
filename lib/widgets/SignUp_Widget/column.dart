import 'package:flutter/material.dart';
import '../../utils/color_constant.dart';

class MyColumn extends StatelessWidget {
  final Icon thisIcon;
  final String thisText;
  const MyColumn({super.key, required this.thisIcon, required this.thisText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey, width: 1),
        ),
        child: Row(
          children: [
            thisIcon,
            const SizedBox(
              width: 8,
            ),
            Text(
              thisText,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: ColorConstant.black),
            )
          ],
        ),
      ),
    );
  }
}
