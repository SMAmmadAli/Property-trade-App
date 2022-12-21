import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property_trade_app/utils/color_constant.dart';
import 'package:property_trade_app/utils/text_constant.dart';
import 'package:property_trade_app/widgets/HomeView_Widgets/bottom_text.dart';
import 'package:property_trade_app/widgets/HomeView_Widgets/center_image.dart';
import 'package:property_trade_app/widgets/HomeView_Widgets/center_text.dart';
import 'package:property_trade_app/widgets/HomeView_Widgets/list_tile.dart';
import 'package:property_trade_app/widgets/HomeView_Widgets/multiple_image.dart';
import 'package:property_trade_app/widgets/HomeView_Widgets/text_image.dart';
import 'package:property_trade_app/widgets/HomeView_Widgets/top_app_view.dart';

import '../widgets/HomeView_Widgets/image_text.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 35, top: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopApp(),
              const SizedBox(height: 20),
              const CenterImage(),
              const SizedBox(height: 10),
              const CenterText(),
              Row(
                children: [
                  ImageAndText(
                      myIcon: Icon(
                        CupertinoIcons.bed_double_fill,
                        size: 15,
                        color: ColorConstant.yellow,
                      ),
                      sentance: TextConstant.Bed),
                  const SizedBox(width: 3),
                  ImageAndText(
                      myIcon: Icon(
                        Icons.bathroom_outlined,
                        size: 15,
                        color: ColorConstant.yellow,
                      ),
                      sentance: TextConstant.Baths),
                  const SizedBox(width: 3),
                  ImageAndText(
                      myIcon: Icon(
                        CupertinoIcons.car_fill,
                        size: 15,
                        color: ColorConstant.yellow,
                      ),
                      sentance: TextConstant.Garage),
                ],
              ),
              const SizedBox(height: 10),
              const MyListTile(),
              Text(TextConstant.description,
                  style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.w400,
                    color: ColorConstant.darkBlue,
                  )),
              const SizedBox(height: 10),
              Text(TextConstant.Gallery,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: ColorConstant.darkBlue,
                  )),
              const SizedBox(height: 10),
              Row(
                children: [
                  const MultipleImage(
                    thisImage: 'assets/image/home_image.jpg',
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                  const MultipleImage(
                    thisImage: 'assets/image/home_image.jpg',
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                  const MultipleImage(
                    thisImage: 'assets/image/home_image.jpg',
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                  const MyTextImage(thisImage1: 'assets/image/Ammad.jpg'),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                TextConstant.pricetext,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: ColorConstant.darkBlue),
              ),
              const SizedBox(height: 10),
              const MyBottomText(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
