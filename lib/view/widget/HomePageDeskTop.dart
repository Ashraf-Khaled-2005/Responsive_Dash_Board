import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/widget/AllExpenses.dart';
import 'package:responsive_dash_board/view/widget/CustomDrawer.dart';

import 'QuickInvoice.dart';

class HomePageDeskTop extends StatelessWidget {
  const HomePageDeskTop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              AllExpenses(),
              SizedBox(
                height: 24,
              ),
              QuickInvoice()
            ],
          ),
        )
      ],
    );
  }
}
