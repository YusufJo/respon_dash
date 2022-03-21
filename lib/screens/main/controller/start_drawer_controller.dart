import 'package:flutter/material.dart';

class StartDrawerController extends InheritedWidget {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  StartDrawerController({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  static StartDrawerController of(BuildContext context) {
    final StartDrawerController? result =
        context.dependOnInheritedWidgetOfExactType<StartDrawerController>();
    assert(result != null, 'No StartDrawerController found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => oldWidget != this;

  void toggle() {
    drawerKey.currentState!.openDrawer();
  }
}
