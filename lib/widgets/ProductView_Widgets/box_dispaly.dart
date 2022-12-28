import 'package:flutter/material.dart';
import 'package:property_trade_app/utils/image_constant.dart';
import 'package:property_trade_app/utils/text_constant.dart';

class CardItem {
  final String urlImage;
  final String cardtitle;
  final String cardsubTitle;

  CardItem(this.urlImage, this.cardtitle, this.cardsubTitle);
}

class BoxDisplay extends StatefulWidget {
  BoxDisplay({super.key});

  @override
  State<BoxDisplay> createState() => _BoxDisplayState();
}

class _BoxDisplayState extends State<BoxDisplay> {
  List<CardItem> items = [
    CardItem(MyImage.image2, TextConstant.House, TextConstant.Location),
    CardItem(MyImage.product_page_houseimg, TextConstant.House,
        TextConstant.Location),
    CardItem(MyImage.image2, TextConstant.House, TextConstant.Location),
    CardItem(MyImage.product_page_houseimg, TextConstant.Baths,
        TextConstant.Location),
    CardItem(MyImage.image2, TextConstant.House, TextConstant.Location),
    CardItem(MyImage.product_page_houseimg, TextConstant.House,
        TextConstant.Location),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: ListView.separated(
          itemCount: 6,
          separatorBuilder: (context, index) => const SizedBox(
            width: 12,
          ),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => BuildCard(item: items[index]),
        ),
      ),
    );
  }
}

Widget BuildCard({required CardItem item}) => ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: 230,
        child: Column(
          children: [
            Expanded(
                child: AspectRatio(
              aspectRatio: 4 / 3,
              child: Image.asset(
                item.urlImage,
                fit: BoxFit.cover,
              ),
            )),
            Container(
              color: Color(0xff0F2F44),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 8),
                    child: Row(
                      children: [
                        Text(
                          item.cardtitle,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        Text(
                          item.cardsubTitle,
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, top: 8, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.bed_outlined,
                          size: 15,
                          color: Colors.yellow,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          TextConstant.Bed,
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.white),
                        ),
                        const SizedBox(width: 7),
                        const Icon(
                          Icons.bathroom_outlined,
                          size: 15,
                          color: Colors.yellow,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          TextConstant.Baths,
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.white),
                        ),
                        const SizedBox(width: 7),
                        const Icon(
                          Icons.car_crash,
                          size: 15,
                          color: Colors.yellow,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          TextConstant.Garage,
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
