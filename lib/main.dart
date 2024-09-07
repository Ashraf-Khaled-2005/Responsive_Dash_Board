import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

double GetResponsiveFontSize(
    {required double fontSize, required BuildContext context}) {
  double scalefactor = GetScaleFactor(context);

  double responsiveFont = fontSize * scalefactor;
  return responsiveFont.clamp(fontSize * .8, fontSize * 1.2);
}

double GetScaleFactor(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  if (width < 600)
    return width / 400;
  else if (width < 900)
    return width / 700;
  else
    return width / 1000;
}
