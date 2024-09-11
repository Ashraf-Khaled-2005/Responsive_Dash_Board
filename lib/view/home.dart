import 'package:flutter/material.dart';

import 'package:responsive_dash_board/view/widget/HomePageDeskTop.dart';
import 'package:responsive_dash_board/view/widget/adaptive_Layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF7F9FA),
      body: Adaptive_Layout(
        mobile: (context) => const SizedBox(),
        tablet: (context) => const SizedBox(),
        desktop: (context) => const HomePageDeskTop(),
      ),
    );
  }
}
