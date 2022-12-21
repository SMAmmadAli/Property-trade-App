import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property_trade_app/utils/color_constant.dart';
import 'package:property_trade_app/utils/text_constant.dart';
import 'package:property_trade_app/widgets/SignUp_Widget/column.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.bgColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20.0, left: 15.0),
              child: Icon(
                CupertinoIcons.arrow_left_square,
                size: 25,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset(
                "assets/image/Ammad.jpg",
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                TextConstant.you,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: ColorConstant.black),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            MyColumn(
                thisIcon: Icon(
                  Icons.facebook,
                  size: 25,
                  color: Colors.blue[700],
                ),
                thisText: 'Continue with Facebook'),
            const SizedBox(
              height: 10,
            ),
            MyColumn(
                thisIcon: Icon(
                  Icons.apple,
                  size: 25,
                  color: ColorConstant.black,
                ),
                thisText: 'Continue with Apple'),
            const SizedBox(
              height: 10,
            ),
            MyColumn(
                thisIcon: Icon(
                  Icons.facebook,
                  size: 25,
                  color: Colors.blue[700],
                ),
                thisText: 'Continue with Facebook'),
          ],
        ));
  }
}
