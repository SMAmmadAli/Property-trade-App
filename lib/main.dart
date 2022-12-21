import 'package:flutter/material.dart';
import 'package:property_trade_app/Screen/home_view.dart';
import 'package:property_trade_app/Screen/signup_view.dart';
import 'Screen/product_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpView(),
    );
  }
}
