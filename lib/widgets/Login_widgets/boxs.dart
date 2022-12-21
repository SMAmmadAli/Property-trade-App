import 'package:flutter/material.dart';

class MyBoxs extends StatelessWidget {
  final Image lImg;
  const MyBoxs({super.key, required this.lImg});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
        ),
        width: MediaQuery.of(context).size.width * 0.28,
        height: MediaQuery.of(context).size.height * 0.1,
        child: lImg,
      ),
    );
  }
}
