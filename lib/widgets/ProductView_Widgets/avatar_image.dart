import 'package:flutter/material.dart';

import '../../Screen/profile_view.dart';

class AvatarImage extends StatelessWidget {
  const AvatarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => ProfilePage())),
      child: const Padding(
        padding: EdgeInsets.only(top: 30.0, right: 35.0),
        child: CircleAvatar(
          backgroundImage: AssetImage('../assets/image/personimg.png'),
          radius: 25,
        ),
      ),
    );
  }
}
