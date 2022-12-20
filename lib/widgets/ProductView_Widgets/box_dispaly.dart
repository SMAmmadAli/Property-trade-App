import 'package:flutter/material.dart';

import '../../utils/color_constant.dart';
import '../../utils/text_constant.dart';

class BoxDisplay extends StatelessWidget {
  const BoxDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            child: Padding(
          padding: const EdgeInsets.only(left: 35.0, right: 16),
          child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(21),
                topRight: Radius.circular(21),
              ),
              child: Image.asset(
                '../assets/image/house.jpg',
                fit: BoxFit.cover,
              )),
        )),
        Padding(
          padding: const EdgeInsets.only(top: 0, left: 35.0, right: 16),
          child: Container(
            decoration: BoxDecoration(
                color: ColorConstant.darkBlue,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                )),
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.15,
            child: Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      TextConstant.House,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: ColorConstant.bgColor),
                    ),
                    Text(
                      TextConstant.Location,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: ColorConstant.bgColor),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.bed_outlined,
                          size: 15,
                          color: ColorConstant.yellow,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '4 Beds',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: ColorConstant.bgColor),
                        ),
                        const SizedBox(width: 7),
                        Icon(
                          Icons.bathroom_outlined,
                          size: 15,
                          color: ColorConstant.yellow,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '4 Baths',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: ColorConstant.bgColor),
                        ),
                        const SizedBox(width: 7),
                        Icon(
                          Icons.car_crash,
                          size: 15,
                          color: ColorConstant.yellow,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '1 Garage',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: ColorConstant.bgColor),
                        ),
                      ],
                    )
                  ],
                )),
          ),
        ),
      ],
    );
  }
}
