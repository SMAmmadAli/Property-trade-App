import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property_trade_app/utils/color_constant.dart';
import 'package:property_trade_app/utils/image_constant.dart';
import 'package:property_trade_app/utils/text_constant.dart';
import 'package:property_trade_app/widgets/SignUp_Widget/bottom_text.dart';
import 'package:property_trade_app/widgets/SignUp_Widget/button.dart';
import 'package:property_trade_app/widgets/SignUp_Widget/column.dart';
import 'package:property_trade_app/widgets/SignUp_Widget/line.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.bgColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20.0, left: 15.0),
                child: Icon(
                  CupertinoIcons.arrow_left,
                  size: 25,
                ),
              ),
              Center(
                child: Image.asset(
                  MyImage.signUpImg,
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
              ),
              Center(
                child: Text(
                  TextConstant.you,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              MyColumn(
                  socialImg: Image.asset(
                    MyImage.facebook,
                    width: MediaQuery.of(context).size.width * 0.08,
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  thisText: TextConstant.facebook),
              const SizedBox(
                height: 10,
              ),
              MyColumn(
                  socialImg: Image.asset(
                    MyImage.google,
                    width: MediaQuery.of(context).size.width * 0.08,
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  thisText: TextConstant.google),
              const SizedBox(
                height: 10,
              ),
              MyColumn(
                  socialImg: Image.asset(
                    MyImage.apple,
                    width: MediaQuery.of(context).size.width * 0.08,
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  thisText: TextConstant.apple),
              const SizedBox(
                height: 10,
              ),
              MyLine(Lor: TextConstant.or),
              const SizedBox(
                height: 10,
              ),
              SignButton(
                buttonText: TextConstant.signButton,
              ),
              const SizedBox(
                height: 10,
              ),
              SignInButtonText(
                bText1: TextConstant.account,
                bText2: TextConstant.signUpText,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }
}
