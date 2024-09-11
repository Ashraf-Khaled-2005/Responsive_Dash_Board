import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/util/Apptext.dart';
import 'package:responsive_dash_board/view/widget/LatestTransactionListview.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.Medium16,
        ),
        SizedBox(
          height: 12,
        ),
        Latesttransactionlistview()
      ],
    );
  }
}
