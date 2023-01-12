import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property_trade_app/utils/color_constant.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
                size: 18,
              ),
              label: '',
              backgroundColor: Color(0xff0F2F44),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.search,
                size: 18,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.bookmark,
                size: 18,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person,
                size: 18,
              ),
              label: '',
            ),
          ],
          // selectedItemColor: Colors.amber[800],
        ),
        Positioned(
          right: 82,
          bottom: 30,
          child: Icon(
            CupertinoIcons.circle_fill,
            size: 10,
            color: ColorConstant.yellow,
          ),
        )
      ],
    );
  }
}
