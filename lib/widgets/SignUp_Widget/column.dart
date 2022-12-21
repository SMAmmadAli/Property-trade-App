import 'package:flutter/material.dart';
import '../../utils/color_constant.dart';

class MyColumn extends StatelessWidget {
  final Image socialImg;
  final String thisText;
  const MyColumn({super.key, required this.thisText, required this.socialImg});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {},
        child: Container(
          height: MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: ColorConstant.grey, width: 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              socialImg,
              const SizedBox(
                width: 8,
              ),
              Text(thisText, style: Theme.of(context).textTheme.subtitle1)
            ],
          ),
        ),
      ),
    );
  }
}
