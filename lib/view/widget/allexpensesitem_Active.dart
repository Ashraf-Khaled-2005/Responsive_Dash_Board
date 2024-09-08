import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/util/Apptext.dart';
import 'package:responsive_dash_board/model/allexpensesitemModel.dart';

import 'AllexpensesItemHeader.dart';

class InActiveAllexpensesitem extends StatelessWidget {
  const InActiveAllexpensesitem({
    super.key,
    required this.model,
  });

  final Allexpensesitemmodel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            width: 1,
            color: Color(0xfff1f1f1),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllexpensesItemHeader(image: model.image),
          const SizedBox(
            height: 34,
          ),
          Text(
            model.title,
            style: AppStyles.Medium16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            model.date,
            style: AppStyles.Regular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            model.price,
            style: AppStyles.Semibold24,
          ),
        ],
      ),
    );
  }
}

class ActiveAllexpensesitem extends StatelessWidget {
  const ActiveAllexpensesitem({
    super.key,
    required this.model,
  });

  final Allexpensesitemmodel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Color(0xff4eb7f2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            width: 1,
            color: Color(0xfff1f1f1),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllexpensesItemHeader(
            image: model.image,
            isactive: true,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            model.title,
            style: AppStyles.Medium16.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            model.date,
            style: AppStyles.Regular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            model.price,
            style: AppStyles.Semibold24.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
