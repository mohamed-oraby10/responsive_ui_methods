import 'package:flutter/material.dart';
import 'package:responsive_ui_methods/utils/constants.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.mobileWidget,
    this.tabletWidget,
    this.webWidget,
  });
  final Widget mobileWidget;
  final Widget? tabletWidget;
  final Widget? webWidget;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= kWebWidth) {
          return webWidget ?? mobileWidget;
        } else if (constraints.maxWidth >= kTabletWidth) {
          return tabletWidget ?? mobileWidget;
        } else {
          return mobileWidget;
        }
      },
    );
  }
}
