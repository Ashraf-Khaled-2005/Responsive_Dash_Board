import 'package:flutter/material.dart';

class Adaptive_Layout extends StatelessWidget {
  const Adaptive_Layout(
      {super.key,
      required this.mobile,
      required this.desktop,
      required this.tablet});
  final WidgetBuilder mobile, desktop, tablet;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobile(context);
      } else if (constraints.maxWidth < 900) {
        return tablet(context);
      } else {
        return desktop(context);
      }
    });
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
