import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/widget/AllexpensesHeader.dart';
import 'package:responsive_dash_board/view/widget/all_expensess_items_list_view.dart';

import 'CustomBackground.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
      padding: 20,
      child: Column(
        children: [
          AllexpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensessItemsListView(),
        ],
      ),
    );
  }
}
