import 'package:flutter/material.dart';
import 'package:property_trade_app/Screen/product_view.dart';
import 'package:property_trade_app/Screen/splash_view.dart';
import 'package:property_trade_app/utils/color_constant.dart';

class Login_Button extends StatelessWidget {
  final String buttonText;
  const Login_Button({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Product_Screen()),
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
