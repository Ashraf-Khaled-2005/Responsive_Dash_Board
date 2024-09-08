import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/util/Apptext.dart';

class UserInfoListTile extends StatelessWidget {
  final String image, title, sub;
  const UserInfoListTile(
      {super.key, required this.image, required this.title, required this.sub});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xfffafafa),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          title,
          style: AppStyles.Semibold16,
        ),
        subtitle: Text(
          sub,
          style: AppStyles.Regular12,
        ),
      ),
    );
  }
}
