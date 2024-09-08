import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/core/util/Apptext.dart';
import 'package:responsive_dash_board/model/allexpensesitemModel.dart';
import 'package:responsive_dash_board/view/widget/AllexpensesItemHeader.dart';

import 'allexpensesitem_Active.dart';

class AllExpensesItem extends StatelessWidget {
  final bool isactive;
  final Allexpensesitemmodel model;
  const AllExpensesItem(
      {super.key, required this.model, this.isactive = false});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300), // Set animation duration
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(
            opacity: animation, child: child); // Fade transition
      },
      child: isactive
          ? ActiveAllexpensesitem(key: ValueKey('active'), model: model)
          : InActiveAllexpensesitem(key: ValueKey('inactive'), model: model),
    );
  }
}
