import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/util/assets.dart';
import 'package:responsive_dash_board/view/widget/UserInfoListTile.dart';

class Latesttransactionlistview extends StatelessWidget {
  const Latesttransactionlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => const IntrinsicWidth(
          child: UserInfoListTile(
            image: Assets.assetsImagesAvatar1,
            title: "Madrani Andi",
            sub: "Madranit@gmail.com",
          ),
        ),
      ),
    );
  }
}
