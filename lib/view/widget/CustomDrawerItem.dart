import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/core/util/Apptext.dart';

import '../../model/DrawerItemModel.dart';

class CustomDrawerItem extends StatelessWidget {
  final bool isactive;
  final DraweritemModel item;
  const CustomDrawerItem(
      {super.key, required this.item, this.isactive = false});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 5000),
      child: ListTile(
        leading: SvgPicture.asset(item.iamge),
        title: Text(
          item.title,
          style: !isactive ? AppStyles.Medium16 : AppStyles.bold16,
        ),
        trailing: isactive
            ? Container(
                width: 6,
                height: double.infinity,
                color: Color(0xff4eb7f2),
              )
            : null,
      ),
    );
  }
}
