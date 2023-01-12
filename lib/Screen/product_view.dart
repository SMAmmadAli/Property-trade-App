import 'package:flutter/material.dart';
import 'package:property_trade_app/utils/text_constant.dart';
import 'package:property_trade_app/widgets/ProductView_Widgets/avatar_image.dart';
import 'package:property_trade_app/widgets/ProductView_Widgets/bottom_box.dart';
import 'package:property_trade_app/widgets/ProductView_Widgets/bottom_navbar.dart';
import 'package:property_trade_app/widgets/ProductView_Widgets/box_dispaly.dart';
import 'package:property_trade_app/widgets/ProductView_Widgets/custom_text.dart';
import 'package:property_trade_app/widgets/ProductView_Widgets/custom_text2.dart';
import 'package:property_trade_app/widgets/ProductView_Widgets/middle_text.dart';
import 'package:property_trade_app/widgets/ProductView_Widgets/tab_bar.dart';

class Product_Screen extends StatelessWidget {
  const Product_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      // backgroundColor: ColorConstant.bgColor,
      backgroundColor: Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomText2(),
                AvatarImage(),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                CustomText(text1: TextConstant.ContantText),
                CustomText(text1: TextConstant.ContantText2)
              ],
            ),
            const SizedBox(height: 10.0),
            const MyTabBar(),
            const SizedBox(height: 10.0),
            MiddleText(
              mText: TextConstant.BestForYour,
              mText1: "See All",
            ),
            const SizedBox(height: 10.0),
            BoxDisplay(),
            const SizedBox(height: 10.0),
            MiddleText(
              mText: TextConstant.Nearby_your_location,
              mText1: "See All",
            ),
            const SizedBox(height: 10.0),
            const BottomBox(),
            const SizedBox(height: 10.0),
            const BottomBox(),
            const SizedBox(height: 10.0),
            const BottomBox(),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
