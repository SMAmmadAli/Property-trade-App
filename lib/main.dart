import 'package:flutter/material.dart';
import 'package:property_trade_app/Screen/home_view.dart';
import 'package:property_trade_app/Screen/login_view.dart';
import 'package:property_trade_app/Screen/signup_view.dart';
import 'package:property_trade_app/Screen/splash_view.dart';
import 'package:property_trade_app/utils/color_constant.dart';
import 'Screen/product_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(
        headline1: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: ColorConstant.black),
        subtitle1: TextStyle(
          color: ColorConstant.black,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        subtitle2: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: ColorConstant.bgColor),
      )),
      debugShowCheckedModeBanner: false,
      home: SignUpView(),
    );
  }
}
