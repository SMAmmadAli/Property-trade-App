import 'dart:html';

import 'package:flutter/material.dart';
import 'package:property_trade_app/Screen/home_view.dart';
import 'package:property_trade_app/utils/image_constant.dart';

import '../../utils/color_constant.dart';
import '../../utils/text_constant.dart';
import 'boxIcon.dart';

class BottomBox extends StatelessWidget {
  const BottomBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: InkWell(
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (Context) => HomeView())),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.85,
          decoration: BoxDecoration(
              color: ColorConstant.lightBlue,
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  MyImage.product_page_innerhouseimg,
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.27,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      TextConstant.RanchHome,
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: ColorConstant.darkBlue),
                    ),
                    Text(
                      TextConstant.Location,
                      style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w400,
                          color: ColorConstant.darkBlue),
                    ),
                    const BoxIconn(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
