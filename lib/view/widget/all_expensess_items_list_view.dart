import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/allexpensesitemModel.dart';
import 'package:responsive_dash_board/view/widget/allexpenses_item.dart';

import '../../core/util/assets.dart';

class AllExpensessItemsListView extends StatefulWidget {
  const AllExpensessItemsListView({super.key});

  static const items = [
    Allexpensesitemmodel(
        image: Assets.assetsImagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    Allexpensesitemmodel(
        image: Assets.assetsImagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    Allexpensesitemmodel(
        image: Assets.assetsImagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];

  @override
  State<AllExpensessItemsListView> createState() =>
      _AllExpensessItemsListViewState();
}

class _AllExpensessItemsListViewState extends State<AllExpensessItemsListView> {
  int active = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        AllExpensessItemsListView.items.length,
        (index) {
          return Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  active = index;
                });
              },
              child: Padding(
                padding: !(index == 1)
                    ? EdgeInsets.zero
                    : EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensesItem(
                  isactive: active == index,
                  model: AllExpensessItemsListView.items[index],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
