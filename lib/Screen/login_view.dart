import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property_trade_app/utils/color_constant.dart';
import 'package:property_trade_app/widgets/Login_widgets/boxs.dart';
import 'package:property_trade_app/widgets/Login_widgets/checkbox.dart';
import 'package:property_trade_app/widgets/Login_widgets/login_button.dart';
import 'package:property_trade_app/widgets/Login_widgets/textfield_veiw.dart';
import 'package:property_trade_app/widgets/SignUp_Widget/bottom_text.dart';
import 'package:property_trade_app/widgets/SignUp_Widget/line.dart';

import '../utils/image_constant.dart';
import '../utils/text_constant.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
            const SizedBox(height: 10),
            Center(
              child: Image.asset(
                MyImage.loginPageImg,
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.2,
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                TextConstant.loginText,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            const SizedBox(height: 20),
            MyTextField(
                hintText: 'andrew_ainsley@yourdomain.com',
                suffixIcon: Icon(
                  CupertinoIcons.mail_solid,
                  size: 18,
                  color: ColorConstant.black,
                ),
                obscureText: false),
            const SizedBox(height: 10),
            MyTextField(
                hintText: 'Password',
                suffixIcon: Icon(
                  Icons.lock,
                  size: 18,
                  color: ColorConstant.black,
                ),
                obscureText: true),
            const SizedBox(height: 20),
            const Mycheckbox(),
            const SizedBox(height: 10),
            Login_Button(buttonText: TextConstant.signIn),
            const SizedBox(height: 10),
            SignInButtonText(bText1: '', bText2: TextConstant.forgot1),
            const SizedBox(height: 10),
            MyLine(Lor: TextConstant.orwith),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyBoxs(lImg: Image.asset(MyImage.facebook)),
                MyBoxs(lImg: Image.asset(MyImage.google)),
                MyBoxs(lImg: Image.asset(MyImage.apple)),
              ],
            ),
            const SizedBox(height: 10),
            SignInButtonText(
                bText1: TextConstant.account, bText2: TextConstant.signUpText),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
