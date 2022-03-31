import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({Key? key, this.mobile, this.tab, this.desktop})
      : super(key: key);

  final Widget? mobile;
  final Widget? tab;
  final Widget? desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 400) {
          return mobile!;
        } else {
          return tab!;
        }
      },
    );
  }
}
