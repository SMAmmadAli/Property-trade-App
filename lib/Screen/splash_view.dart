import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property_trade_app/utils/color_constant.dart';
import 'package:property_trade_app/utils/text_constant.dart';
import 'package:property_trade_app/widgets/Login_widgets/textfield_veiw.dart';
import 'package:property_trade_app/widgets/SplashView%20Widget/splash_button.dart';

import '../utils/image_constant.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 15.0),
                    child: Icon(
                      CupertinoIcons.arrow_left,
                      size: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 15),
                  child: Text("Fill Your Profile",
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(color: ColorConstant.black)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(MyImage.formImg),
                      radius: 80,
                    ),
                    Positioned(
                        bottom: 0,
                        right: 15,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: ColorConstant.blue,
                              borderRadius: BorderRadius.circular(8)),
                          child: Icon(
                            CupertinoIcons.pencil,
                            size: 20,
                            color: ColorConstant.bgColor,
                          ),
                        )),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            MyTextField(
                hintText: 'Full Name', suffixIcon: null, obscureText: false),
            const SizedBox(height: 10),
            MyTextField(
                hintText: 'Nickname', suffixIcon: null, obscureText: false),
            const SizedBox(height: 10),
            MyTextField(
              hintText: 'Date of Birth',
              suffixIcon: null,
              obscureText: false,
              prefixIcon: Icon(
                CupertinoIcons.calendar,
                size: 20,
                color: ColorConstant.grey,
              ),
            ),
            const SizedBox(height: 10),
            MyTextField(
              hintText: 'Email',
              suffixIcon: null,
              obscureText: false,
              prefixIcon: Icon(
                CupertinoIcons.mail,
                size: 20,
                color: ColorConstant.grey,
              ),
            ),
            const SizedBox(height: 10),
            MyTextField(
              hintText: 'Gender',
              suffixIcon: null,
              obscureText: false,
              prefixIcon: Icon(
                Icons.arrow_drop_down,
                size: 20,
                color: ColorConstant.grey,
              ),
            ),
            const SizedBox(height: 30),
            Splash_button(buttonText: TextConstant.continue1),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
