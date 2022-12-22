import 'package:flutter/material.dart';
import 'package:property_trade_app/utils/color_constant.dart';

import '../../Screen/splash_view.dart';
import '../../utils/text_constant.dart';

class MyTextField extends StatefulWidget {
  final String hintText;
  final Icon? suffixIcon;
  final Icon? prefixIcon;
  final bool obscureText;

  MyTextField(
      {super.key,
      required this.hintText,
      required this.suffixIcon,
      required this.obscureText,
      this.prefixIcon});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  login() {
    if (email.text == 'admin@gmail.com' && password.text == '123456') {
      print("Login Successful");
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SplashView()),
      );
    } else {
      print("Login failed");
      setState(() {
        TextConstant.loginErrorText = 'Login failed';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.085,
        child: TextFormField(
          controller: password,
          obscureText: widget.obscureText,
          decoration: InputDecoration(
            hintText: widget.hintText,
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none),
            prefixIcon: widget.suffixIcon,
            suffixIcon: widget.prefixIcon,
          ),
        ),
      ),
    );
  }
}
