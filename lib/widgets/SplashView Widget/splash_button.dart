import 'package:flutter/material.dart';
import 'package:property_trade_app/Screen/home_view.dart';
import 'package:property_trade_app/utils/color_constant.dart';

class Splash_button extends StatelessWidget {
  final String buttonText;
  const Splash_button({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeView()),
        );
      },
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.06,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: ColorConstant.blue),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                color: ColorConstant.bgColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
