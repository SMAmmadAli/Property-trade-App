import 'package:flutter/material.dart';
import 'package:property_trade_app/Screen/list_view.dart';

import '../../utils/color_constant.dart';

class MiddleText extends StatelessWidget {
  final String mText;
  final String mText1;
  const MiddleText({super.key, required this.mText, required this.mText1});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            mText,
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: ColorConstant.darkBlue),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 25.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MyListViewPage(title: "NEW ITEMS")));
            },
            child: Text(
              mText1,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontWeight: FontWeight.bold, color: ColorConstant.darkBlue),
            ),
          ),
        ),
      ],
    );
  }
}
