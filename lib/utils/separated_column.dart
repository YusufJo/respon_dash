import 'package:flutter/material.dart';

class SeparatedColumn extends StatelessWidget {
  final List<Widget> children;
  final Widget separator;

  const SeparatedColumn(
      {Key? key, required this.children, required this.separator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // guard against empty children
    if (children.isEmpty) return Column();
    final widgets = <Widget>[children[0]];

    for (int i = 1; i < children.length; i++) {
      widgets.add(separator);
      widgets.add(children[i]);
    }
    return Column(
      children: widgets,
    );
  }
}
