import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/util/Apptext.dart';

import 'CustomRange.dart';

class AllexpensesHeader extends StatelessWidget {
  const AllexpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Expenses',
          style: AppStyles.Semibold20,
        ),
        Spacer(),
        CustomRange()
      ],
    );
  }
}
