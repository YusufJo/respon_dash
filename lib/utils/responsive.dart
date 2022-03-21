import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive(
      {Key? key, required this.mobile, this.tablet, required this.desktop})
      : super(key: key);

  static bool isMobile(double screenWidth) => screenWidth < 650;

  static bool isTablet(double screenWidth) =>
      screenWidth >= 650 && screenWidth < 1024;

  static bool isDesktop(double screenWidth) => screenWidth >= 1024;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (Responsive.isMobile(width)) {
      return mobile;
    } else if (Responsive.isTablet(width) && tablet != null) {
      return tablet!;
    } else {
      return desktop;
    }
  }
}
