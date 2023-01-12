import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/color_constant.dart';
import '../widgets/profile_widget/column.dart';
import '../widgets/profile_widget/list_tile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.bgColor,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 15.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 120,
                decoration: BoxDecoration(
                    color: ColorConstant.darkBlue,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    ListTile(
                        leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage('asset/image/image 1.png'),
                        ),
                        title: Wrap(
                          children: [
                            Text(
                              'Elsa',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: ColorConstant.ligthWhite),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Icon(
                              CupertinoIcons.star_fill,
                              size: 20,
                              color: ColorConstant.yellow,
                            )
                          ],
                        ),
                        subtitle: Text(
                          'Level 4 Ace Member',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: ColorConstant.ligthWhite),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.close,
                            size: 20,
                            color: ColorConstant.ligthWhite,
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const MyProfileColumn(
                            text1: '1,208',
                            text2: 'Transactions',
                          ),
                          VerticalDivider(
                            color: ColorConstant.darkBlue,
                          ),
                          const MyProfileColumn(text1: '726', text2: 'Points'),
                          VerticalDivider(
                            color: ColorConstant.darkBlue,
                          ),
                          const MyProfileColumn(text1: '8', text2: 'Rank'),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Container(
                              width: 80,
                              height: 20,
                              decoration: BoxDecoration(
                                color: ColorConstant.grey,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Explore",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorConstant.ligthWhite),
                                  ),
                                  Icon(
                                    Icons.arrow_right_rounded,
                                    color: ColorConstant.ligthWhite,
                                    size: 20,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 200,
                decoration: BoxDecoration(
                    color: ColorConstant.ligthWhite,
                    borderRadius: BorderRadius.circular(15)),
                child: ListView(
                  children: [
                    ProfileListTile(
                        icon: Icon(
                          Icons.copy,
                          color: ColorConstant.darkBlue,
                          size: 30,
                        ),
                        text: 'All Transactions'),
                    ProfileListTile(
                        icon: Icon(
                          Icons.error_outline,
                          color: ColorConstant.darkBlue,
                          size: 30,
                        ),
                        text: 'Pending Transactions'),
                    ProfileListTile(
                        icon: Icon(
                          Icons.watch_later_outlined,
                          color: ColorConstant.darkBlue,
                          size: 30,
                        ),
                        text: 'Refund status'),
                    ProfileListTile(
                        icon: Icon(
                          CupertinoIcons.heart,
                          color: ColorConstant.darkBlue,
                          size: 30,
                        ),
                        text: 'Help and Support')
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 150,
                decoration: BoxDecoration(
                    color: ColorConstant.lightBlue,
                    borderRadius: BorderRadius.circular(15)),
                child: ListView(
                  children: [
                    ProfileListTile(
                        icon: Icon(
                          Icons.error,
                          color: ColorConstant.darkBlue,
                          size: 30,
                        ),
                        text: 'About'),
                    ProfileListTile(
                        icon: Icon(
                          Icons.error_outline,
                          color: ColorConstant.darkBlue,
                          size: 30,
                        ),
                        text: 'Terms and Conditions'),
                    ProfileListTile(
                        icon: Icon(
                          CupertinoIcons.exclamationmark,
                          color: ColorConstant.darkBlue,
                          size: 30,
                        ),
                        text: 'Refund status'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
