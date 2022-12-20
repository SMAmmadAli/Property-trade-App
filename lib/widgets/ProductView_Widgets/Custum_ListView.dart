import 'package:flutter/material.dart';
import 'package:property_trade_app/utils/color_constant.dart';

class CustomListView extends StatelessWidget {
  List<String> items = ["House", "Apartement", "Flot", "Dormintory"];
  CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(
                child: ListView.builder(
              itemCount: items.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: 42,
                  width: 90,
                  color: ColorConstant.darkBlue,
                  child: Text(
                    items[index],
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: ColorConstant.bgColor),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
