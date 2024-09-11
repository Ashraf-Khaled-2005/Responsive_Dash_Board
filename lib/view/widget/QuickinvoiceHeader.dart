import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/util/Apptext.dart';

class QuickinvoiceHeader extends StatelessWidget {
  const QuickinvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.Semibold20,
        ),
        Spacer(),
        CircleAvatar(
          radius: 32,
          backgroundColor: Color(
            0xffF5F6F3,
          ),
          child: Center(
            child: Icon(
              Icons.add,
              color: Color(0xff65B2D0),
            ),
          ),
        )
      ],
    );
  }
}
