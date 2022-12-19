import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:property_trade_app/utils/color_constant.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
            size: 18,
          ),
          label: '',
          backgroundColor: Color(0xff0F2F44),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            size: 18,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.bookmark,
            size: 18,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            size: 18,
          ),
          label: '',
        ),
      ],
      // selectedItemColor: Colors.amber[800],
    );
  }
}
