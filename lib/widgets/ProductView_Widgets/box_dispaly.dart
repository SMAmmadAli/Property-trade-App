import 'package:flutter/material.dart';
import 'package:property_trade_app/utils/image_constant.dart';

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
          padding: const EdgeInsets.only(left: 20.0, right: 16),
          child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(21),
                topRight: Radius.circular(21),
              ),
              child: Image.asset(
                MyImage.product_page_houseimg,
                width: MediaQuery.of(context).size.width * 0.9,
                fit: BoxFit.cover,
              )),
        )),
        Padding(
          padding: const EdgeInsets.only(top: 0, left: 20.0, right: 16),
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
                    Text(TextConstant.House,
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 16)),
                    Text(TextConstant.Location,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2!
                            .copyWith(fontSize: 13)),
                    Row(
                      children: [
                        Icon(
                          Icons.bed_outlined,
                          size: 15,
                          color: ColorConstant.yellow,
                        ),
                        const SizedBox(width: 5),
                        Text(TextConstant.Bed,
                            style: Theme.of(context).textTheme.subtitle2),
                        const SizedBox(width: 7),
                        Icon(
                          Icons.bathroom_outlined,
                          size: 15,
                          color: ColorConstant.yellow,
                        ),
                        const SizedBox(width: 5),
                        Text(TextConstant.Baths,
                            style: Theme.of(context).textTheme.subtitle2),
                        const SizedBox(width: 7),
                        Icon(
                          Icons.car_crash,
                          size: 15,
                          color: ColorConstant.yellow,
                        ),
                        const SizedBox(width: 5),
                        Text(TextConstant.Garage,
                            style: Theme.of(context).textTheme.subtitle2),
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
