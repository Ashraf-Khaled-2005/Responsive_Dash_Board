import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/util/assets.dart';
import 'package:responsive_dash_board/model/allexpensesitemModel.dart';
import 'package:responsive_dash_board/view/widget/AllexpensesHeader.dart';
import 'package:responsive_dash_board/view/widget/all_expensess_items_list_view.dart';
import 'package:responsive_dash_board/view/widget/allexpenses_item.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: const Column(
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
