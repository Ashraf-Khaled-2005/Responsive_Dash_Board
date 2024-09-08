import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllexpensesItemHeader extends StatelessWidget {
  final bool isactive;
  final String image;
  const AllexpensesItemHeader(
      {super.key, required this.image, this.isactive = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          padding: EdgeInsets.all(12),
          height: 60,
          decoration: ShapeDecoration(
              shape: OvalBorder(),
              color: isactive ? Color(0xff064061) : Color(0xfffafafa)),
          child: SvgPicture.asset(
            image,
            color: isactive ? Colors.white : Color(0xff064061),
          ),
        ),
        Spacer(),
        Transform.rotate(
            angle: -1.57079633 * 2,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: isactive ? Colors.white : Color(0xff064061),
            ))
      ],
    );
  }
}
