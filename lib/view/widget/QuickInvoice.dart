import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/widget/LatestTransaction.dart';
import 'package:responsive_dash_board/view/widget/QuickinvoiceHeader.dart';

import 'CustomBackground.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
      padding: 24,
      child: Column(
        children: [
          QuickinvoiceHeader(),
          SizedBox(
            height: 24,
          ),
          LatestTransaction()
        ],
      ),
    );
  }
}
