import 'package:flutter/material.dart';
import 'package:property_trade_app/utils/color_constant.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 5,
        child: Container(
            decoration: BoxDecoration(
              color: ColorConstant.ligthWhite,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TabBar(
                indicatorPadding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorConstant.darkBlue),
                unselectedLabelColor: ColorConstant.black,
                controller: tabController,
                isScrollable: true,
                // labelPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                tabs: const [
                  Tab(child: Text('House')),
                  Tab(child: Text('Apartement')),
                  Tab(child: Text('Flot')),
                  Tab(child: Text('Dormintory')),
                ])),
      ),
    );
  }
}
