import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property_trade_app/utils/color_constant.dart';
import 'package:property_trade_app/utils/text_constant.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage('assets/image/Ammad.jpg'),
        radius: 20,
      ),
      title: Text(
        TextConstant.name,
        style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w700,
            color: ColorConstant.darkBlue),
      ),
      subtitle: Text(
        TextConstant.subname,
        style: TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.w700,
            color: ColorConstant.darkBlue),
      ),
      trailing: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: ColorConstant.darkBlue),
        width: MediaQuery.of(context).size.width * 0.18,
        height: MediaQuery.of(context).size.height * 0.04,
        child: Row(
          children: [
            const SizedBox(width: 5),
            Icon(CupertinoIcons.phone_fill,
                size: 12, color: ColorConstant.ligthWhite),
            const SizedBox(width: 3),
            Text(
              TextConstant.call,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: ColorConstant.bgColor),
            )
          ],
        ),
      ),
    );
  }
}
