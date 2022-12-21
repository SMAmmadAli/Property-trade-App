import 'package:flutter/material.dart';
import 'package:property_trade_app/utils/color_constant.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final Icon? suffixIcon;
  final bool obscureText;

  MyTextField(
      {super.key,
      required this.hintText,
      required this.suffixIcon,
      required this.obscureText});

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.085,
        child: TextFormField(
          controller: textEditingController,
          obscureText: obscureText,
          decoration: InputDecoration(
              hintText: hintText,
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none),
              prefixIcon: suffixIcon),
        ),
      ),
    );
  }
}
